-- vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
--   callback = function()
--     local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
--     if not normal.bg then return end
--     io.write(string.format("\027]11;#%06x\027\\", normal.bg))
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("UILeave", {
--   callback = function() io.write("\027]111\027\\") end,
-- })

-- vim.keymap.set("n", ",tt", toggle_transparency, { desc = "Toggle Transparency" })


local ok, err = pcall(function()
    require('colemak_dh')
    require('maps')
    require('opts')
    require('plugins')
end)

if not ok then
    vim.cmd 'colorscheme fogbell'
    vim.opt.cmdheight = 1
    vim.api.nvim_err_writln("Config crashed! Erro:\n" .. tostring(err))
end

local is_transparent = false

local function toggle_base16_transparency()
    is_transparent = not is_transparent

    if is_transparent then
        -- Explicitly strip colors from the base16 grid elements
        local base16_groups = { "Normal", "NormalNC", "SignColumn", "LineNr", "EndOfBuffer", "StatusLine" }
        for _, group in ipairs(base16_groups) do
            vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
        end
        print("Base16 Transparency: ON")
    else
        -- Reload the active base16 scheme to pull your original backgrounds back
        if vim.g.colors_name then
            vim.cmd("colorscheme " .. vim.g.colors_name)
        end
        print("Base16 Transparency: OFF")
    end
end

-- Keybind setup
vim.keymap.set("n", ",tt", toggle_base16_transparency, { desc = "Toggle Base16 Transparency" })


-- Auto-save view state (folds, cursor position, etc.)
local autosave_group = vim.api.nvim_create_augroup("AutoSaveGroup", { clear = true })
vim.api.nvim_create_autocmd({ "BufWinLeave", "BufLeave", "BufWritePost", "BufHidden", "QuitPre" }, {
    group = autosave_group,
    pattern = "?*",
    nested = true,
    command = "silent! mkview!",
})
vim.api.nvim_create_autocmd("BufWinEnter", {
    group = autosave_group,
    pattern = "?*",
    command = "silent! loadview",
})

vim.opt.fillchars:append({
    foldopen = "┌",
    foldsep = "│",
    foldclose = "",
    fold = " ",
})

vim.api.nvim_create_autocmd("BufReadPost", {
    desc = "Return to last edit position when opening files",
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

