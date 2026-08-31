local fzf = require("fzf-lua")

capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("lsp-file-operations").default_capabilities())

vim.diagnostic.config({
	virtual_text = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "DiagnosticError",
			[vim.diagnostic.severity.WARN] = "DiagnosticWarn",
			[vim.diagnostic.severity.HINT] = "DiagnosticHint",
			[vim.diagnostic.severity.INFO] = "DiagnosticInfo",
		},
		linehl = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
		severity_sort = true,
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-- LSP LANGUAGE SERVER SETUPS
local function setup_lsp()
	local lsp_dir = vim.fn.stdpath("config") .. "/lua/core/lsp_langs"
	local lsp_servers = {}

	if vim.fn.isdirectory(lsp_dir) == 1 then
		for _, file in ipairs(vim.fn.readdir(lsp_dir)) do
			if file:match("%.lua$") then
				local server_name = file:gsub("%.lua$", "")
				table.insert(lsp_servers, server_name)
			end
		end
	end

	vim.lsp.enable(lsp_servers)
end
setup_lsp()

local function map(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

-- Fast Finder Operations via FzfLua
map("n", "<C-c>ld", fzf.lsp_definitions, "Go to Target Definition")
map("n", "<C-c>lr", fzf.lsp_references, "Find Object References")
map("n", "<C-c>li", fzf.lsp_implementations, "Find Workspace Implementations")
map("n", "<C-c>lt", fzf.lsp_typedefs, "Find Target Type Definitions")
-- vim.keymap.set("n", "<C-c>ll", function()
-- 	vim.diagnostic.open_float({
-- 		border = "rounded", -- ("none", "single", "double", "rounded", "solid", "shadow")
-- 		focusable = true,
-- 		scope = "line", -- ("line", "buffer", or "cursor")
-- 		width = 70,
-- 	})
-- end, { desc = "Find Target Type Definitions" })

-- Premium Lspsaga UI Elements (Hover Docs & Diagnostics)
map("n", "<C-c>k", "<CMD>Lspsaga hover_doc<CR>", "Show Floating Documentation")
map("n", "<C-c>la", "<CMD>Lspsaga code_action<CR>", "Open Code Actions Window")
map("n", "<C-c>ln", "<CMD>Lspsaga diagnostic_jump_next<CR>", "Jump to Next Code Error")
map("n", "<C-c>le", "<CMD>Lspsaga show_line_diagnostics<CR>", "View Detailed Line Error")
