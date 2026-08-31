vim.lsp.config("dts_lsp", {
    capabilities = capabilities,
	cmd = { "dts-lsp" },
	filetypes = { "dts" },
	root_dir = function(_, on_dir)
		on_dir(vim.fn.getcwd())
	end,
})

vim.lsp.enable("dts_lsp")
