vim.lsp.config("zls", {
	capabilities = capabilities,
	cmd = { "zls" },
	filetypes = { "zig", "zir" },
	root_dir = function(bufnr, on_dir)
		local filename = vim.api.nvim_buf_get_name(bufnr)
		local root = vim.fs.root(filename, {
			"build.zig",
			".git",
		})

		if root then
			on_dir(root)
		else
			vim.uv.cwd()
		end
	end,
	single_file_support = true,
})
