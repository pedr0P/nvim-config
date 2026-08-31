vim.lsp.config('tinymist', {
    capabilities = capabilities,
    filetypes = { "typst" },
    cmd = { "tinymist" },
    settings = {
        formatterMode = "typstyle",
        exportPdf = "onType",
        semanticTokens = "disable"
    },
})
