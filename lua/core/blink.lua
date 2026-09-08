-- build the fuzzy matcher, optionally add a timeout to `pwait(timeout_ms)`
local cmp = require("blink.cmp")
cmp.build():pwait()

cmp.setup({
	keymap = {
		preset = "none",
		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },

		["<C-h>"] = { "hide", "fallback" },
		["<C-n>"] = { "select_next", "fallback" },
		["<C-e>"] = { "select_prev", "fallback" },
		["<C-l>"] = { "select_and_accept", "fallback" },

		["<C-f>"] = { "scroll_documentation_up", "fallback" },
		["<C-b>"] = { "scroll_documentation_down", "fallback" },

		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },

		["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
	},
	cmdline = {
		keymap = { preset = "inherit", },
		completion = {
			ghost_text = {
				enabled = true,
			},
			menu = {
				auto_show = true,
			},
		},
	},
	-- Terminal mode
	term = {
        enabled = false,
	},
	completion = {
		list = {
			selection = {
				preselect = false,
				auto_insert = true,
			},
		},
		keyword = {
			range = "full",
		},
		accept = {
			auto_brackets = {
				enabled = true,
			},
		},
		ghost_text = {
			enabled = true,
			-- auto_show = true,
			show_with_menu = false,
		},
		menu = {
			enabled = true,
			border = "shadow",
			auto_show = true,
			-- auto_show_delay_ms = 250,
			direction_priority = function()
				local ctx = require("blink.cmp").get_context()
				local item = require("blink.cmp").get_selected_item()
				if ctx == nil or item == nil then
					return { "s", "n" }
				end

				local item_text = item.textEdit ~= nil and item.textEdit.newText or item.insertText or item.label
				local is_multi_line = item_text:find("\n") ~= nil

				-- after showing the menu upwards, we want to maintain that direction
				-- until we re-open the menu, so store the context id in a global variable
				if is_multi_line or vim.g.blink_cmp_upwards_ctx_id == ctx.id then
					vim.g.blink_cmp_upwards_ctx_id = ctx.id
					return { "n", "s" }
				end
				return { "s", "n" }
			end,
			draw = {
				treesitter = { "lsp" },
				columns = {
					{ "kind_icon" },
					{ "label", "label_description" },
					{ "source_name" },
					-- { "kind_icon", "kind" }
				},
				components = {
					kind_icon = {
						text = function(ctx)
							local icon = ctx.kind_icon
							if vim.tbl_contains({ "Path" }, ctx.source_name) then
								local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
								if dev_icon then
									icon = dev_icon
								end
							else
								icon = require("lspkind").symbol_map[ctx.kind] or ""
							end

							return icon .. ctx.icon_gap
						end,

						-- Optionally, use the highlight groups from nvim-web-devicons
						-- You can also add the same function for `kind.highlight` if you want to
						-- keep the highlight groups in sync with the icons.
						highlight = function(ctx)
							local hl = ctx.kind_hl
							if vim.tbl_contains({ "Path" }, ctx.source_name) then
								local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
								if dev_icon then
									hl = dev_hl
								end
							end
							return hl
						end,
					},
					label = {
						width = { fill = true, max = 60 },
						text = function(ctx)
							local highlights_info = require("colorful-menu").blink_highlights(ctx)
							if highlights_info ~= nil then
								-- Or you want to add more item to label
								return highlights_info.label
							else
								return ctx.label
							end
						end,
						highlight = function(ctx)
							local highlights = {}
							local highlights_info = require("colorful-menu").blink_highlights(ctx)
							if highlights_info ~= nil then
								highlights = highlights_info.highlights
							end
							for _, idx in ipairs(ctx.label_matched_indices) do
								table.insert(highlights, { idx, idx + 1, group = "BlinkCmpLabelMatch" })
							end
							-- Do something else
							return highlights
						end,
					},
				},
			},
		},

		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
			window = {
				border = "single",
			},
		},
	},
	signature = {
		window = {
			show_documentation = false,
			border = "single",
		},
	},
	fuzzy = {
		sorts = { "exact", "score", "sort_text", "label" }, -- Default sorting for other filetypes
	},
	sources = {
		providers = {
			buffer = {
				-- keep case of first char
				transform_items = function(a, items)
					local keyword = a.get_keyword()
					local correct, case
					if keyword:match("^%l") then
						correct = "^%u%l+$"
						case = string.lower
					elseif keyword:match("^%u") then
						correct = "^%l+$"
						case = string.upper
					else
						return items
					end

					-- avoid duplicates from the corrections
					local seen = {}
					local out = {}
					for _, item in ipairs(items) do
						local raw = item.insertText
						if raw:match(correct) then
							local text = case(raw:sub(1, 1)) .. raw:sub(2)
							item.insertText = text
							item.label = text
						end
						if not seen[item.insertText] then
							seen[item.insertText] = true
							table.insert(out, item)
						end
					end
					return out
				end,
			},
			snippets = {
				preset = "luasnip",
				should_show_items = function(ctx)
					return ctx.trigger.initial_kind ~= "trigger_character"
				end,
			},
		},
		default = function()
			if vim.tbl_contains({ "text", "yaml", "json", "yacc", "bison", "lex" }, vim.bo.filetype) then
				return { "buffer", "snippets" }
			else
				return { "lsp", "path", "snippets" }
			end
		end,
	},
})
