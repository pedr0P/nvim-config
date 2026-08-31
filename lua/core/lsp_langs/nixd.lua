-- Nix Language Config
vim.lsp.config('nixd', {
    cmd = { "nixd" },
    capabilities = capabilities,
    filetypes = { "nix" },
})
