vim.lsp.config("zubanls", {
    capabilities = capabilities,
    filetypes = { "python" },
    cmd = {
        "zuban",
        "server"
    },
    root_dir = function (bufnr, on_dir)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        local root = vim.fs.root(filename, {
            "pyproject.toml",
            ".git"
        })

        if root then on_dir(root) end
    end,
})
