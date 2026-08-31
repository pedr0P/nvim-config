require("nvim-treesitter").setup({
	install = {
		"rust",
		"zig",
		"c",
		"cpp",
		"lua",
		"python",
		"nix",
	},
})

--   indent = { enable = true },
--   autopairs = { enable = true },
--   highlight = {
--       enable = true, -- false will disable the whole extension
--       disable = { "help" }, -- list of language that will be disabled
--       additional_vim_regex_highlighting = true,
--   },
--   context_commentstring = { enable = true, enable_autocmd = false },
--   rainbow = { enable = true, extended_mode = false, max_file_lines = nil },
--   autotag = { enable = true },
--   incremental_selection = {
--       enable = true,
--       keymaps = {
--           init_selection = "<C-space>",
--           node_incremental = "<C-space>",
--           scope_incremental = false,
--           node_decremental = "<bs>",
--       },
--   },
--   textobjects = { enable = false },
