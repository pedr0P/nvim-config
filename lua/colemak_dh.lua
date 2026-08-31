-- Helper function for clean keymapping
local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- BASE SWAPS: hjkl <-> mnei (Normal, Visual, and Operator-pending modes)
local modes = { "n", "v", "o" }

for _, mode in ipairs(modes) do
    -- Primary Navigation
    map(mode, "m", "h") -- m -> Left
    map(mode, "n", "j") -- n -> Down
    map(mode, "e", "k") -- e -> Up
    map(mode, "i", "l") -- i -> Right

    -- Rebind original keys to original positions
    map(mode, "h", "m") -- h -> Mark
    map(mode, "j", "n") -- j -> Next search
    map(mode, "<C-j>", "n") -- j -> Next search
    map(mode, "k", "e") -- k -> End of word
    map(mode, "l", "i") -- l -> Insert
end

map("v", "ii", "<Right>") -- l -> Insert
map("v", "ir", "<Nop>") -- l -> Insert
map("v", "in", "<Nop>") -- l -> Insert
-- UPPERCASE SWAPS: HJKL <-> MNEI (Normal, Visual, and Operator-pending modes)
for _, mode in ipairs(modes) do
    -- Primary Uppercase Navigation
    map(mode, "M", "H") -- M -> High (Top of screen)
    map(mode, "N", "J") -- N -> Join lines
    map(mode, "E", "K") -- E -> Keyword lookup / Help
    map(mode, "I", "L") -- I -> Low (Bottom of screen)

    -- Rebind original uppercase keys
    map(mode, "H", "M") -- H -> Middle of screen
    map(mode, "J", "N") -- J -> Previous search
    map(mode, "K", "E") -- K -> End of WORD (backward)
    map(mode, "L", "I") -- L -> Insert at beginning of line
end

-- WINDOW NAVIGATION (Normal & Insert Modes using Colemak-DH mnei)
-- Normal Mode Window Navigation
map("n", "<A-m>", "<C-w>h") -- Alt+m -> Move to left split
map("n", "<A-n>", "<C-w>j") -- Alt+n -> Move to bottom split
map("n", "<A-e>", "<C-w>k") -- Alt+e -> Move to top split
map("n", "<A-i>", "<C-w>l") -- Alt+i -> Move to right split

-- Insert Mode Window Navigation (Executes normal mode command, then stays in insert)
map("i", "<A-m>", "<C-\\><C-N><C-w>h") -- Alt+m -> Left split from insert mode
map("i", "<A-n>", "<C-\\><C-N><C-w>j") -- Alt+n -> Bottom split from insert mode
map("i", "<A-e>", "<C-\\><C-N><C-w>k") -- Alt+e -> Top split from insert mode
map("i", "<A-i>", "<C-\\><C-N><C-w>l") -- Alt+i -> Right split from insert mode

-- 4. INSERT MODE CURSOR NAVIGATION
-- Moves your text cursor around using Alt + mnei without leaving Insert Mode.
map("i", "<A-M>", "<Left>")
map("i", "<A-N>", "<Down>")
map("i", "<A-E>", "<Up>")
map("i", "<A-I>", "<Right>")

