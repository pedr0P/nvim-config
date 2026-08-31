vim.g.mapleader = ","
local grap = require("grapple")


local function map(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

grap.setup({
    scope = "cwd",
    icons = true,
    status = false,
})

map("n", ",m", "<cmd>Grapple toggle<cr>", "Tag a file" )
map("n", ",h", "<cmd>Grapple toggle_tags<cr>", "Toggle tags menu" )
map("n", ",1", "<cmd>Grapple select index=1<cr>", "Select first tag" )
map("n", ",2", "<cmd>Grapple select index=2<cr>", "Select second tag" )
map("n", ",3", "<cmd>Grapple select index=3<cr>", "Select third tag" )
map("n", ",4", "<cmd>Grapple select index=4<cr>", "Select fourth tag" )
map("n", ",5", "<cmd>Grapple select index=5<cr>", "Select fifth tag" )
map("n", ",n", "<cmd>Grapple cycle_tags next<cr>", "Go to next tag" )
map("n", ",p", "<cmd>Grapple cycle_tags prev<cr>", "Go to previous tag" )
