vim.lsp.config("clangd", {
    capabilities = capabilities,
    filetypes = { 'cpp', 'c' },
    cmd = {
        "clangd",
        "--background-index",
        "--compile-commands-dir=.",
        "--enable-config"
    },
    root_dir = function (bufnr, on_dir)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        local root = vim.fs.root(filename, {
            "compile_commands.json",
            "compile_flags.json",
            "compile_flags.txt",
            ".clangd",
            ".git"
        })

        if root then on_dir(root) end
    end,
})
