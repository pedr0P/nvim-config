vim.lsp.config("emmylua_ls", {
    capabilities = capabilities,
    cmd = { 'emmylua_ls' },
    filetypes = { 'lua' },
    root_markers = { { '.emmyrc.json', '.luarc.json' }, '.git' },
    settings = {
        completion = {
            enable = true,
            -- The require files at the top
            autoRequire = true,
            autoRequireFunction = "require",
            autoRequireNamingConvention = "keep",
            autoRequireSeparator = ".",
            -- Function completion
            callSnippet = true,
            -- Function completion symbol for after having typed
            postfix = "@",
            baseFunctionIncludesName = true,
        },
        diagnostics = {
            enable = true,
            globals = {"vim"},
        },
        runtime = {
            version = 'LuaJIT',
        },
    },
})
vim.lsp.enable("emmylua_ls")
