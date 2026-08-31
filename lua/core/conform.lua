require("conform").setup({
	formatters_by_ft = {
		lua =  { "stylua" },
		c   =  { "clang-format" },
        zig =  { "indent" },
		yacc = { "indent" },
		nix = { "nixfmt" },
        -- dts  = { "dts-format" }
	},
	lsp_fallback = true,
	--   vim.api.nvim_create_autocmd("FileType", {
	-- pattern = "yacc",
	-- callback = function()
	--   -- Maps <leader>cf to format the C block your cursor is currently inside
	--   vim.keymap.set("n", "<leader>cf", function()
	--     -- 1. Save cursor position
	--     local pos = vim.api.nvim_win_get_cursor(0)
	--
	--     -- 2. Visual select inside the curly braces, then pipe to clang-format
	--     vim.cmd("normal! viB")
	--     vim.cmd("'<,'>!clang-format --style=LLVM")
	--
	--     -- 3. Clear visual mode and restore cursor
	--     vim.api.nvim_win_set_cursor(0, pos)
	--   end, { buffer = true, desc = "Format current embedded C action block" })
	-- end,
    formatters = {
        nixfmt = {
            prepend_args = { "--indent", "4" },
        },
    },
})

vim.keymap.set("n", "<C-c>lf", function()
	require("conform").format()
end, { desc = "Format file with LSP" })
