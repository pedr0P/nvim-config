require('leap').opts = {
    -- Highly recommended: define a preview filter to reduce visual noise
    -- and the blinking effect after the first keypress.
    -- For example, define word boundaries as the common case, that is, skip
    -- preview for matches starting with whitespace or an alphabetic
    -- mid-word character: foobar[baaz] = quux
    --                     ^    ^^^  ^^ ^ ^  ^
    preview = function (ch0, ch1, ch2)
        return not (ch1:match('%s') or (ch0:match('%a') and ch1:match('%a') and ch2:match('%a')))
    end,

    equivalence_classes = {
        ' \t\r\n',
        'aäàáâãā',
        'dḍ',
        'eëéèêē',
        'gǧğ',
        'hḥḫ',
        'iïīíìîı',
        'nñ',
        'oō',
        'sṣšß',
        'tṭ',
        'uúûüűū',
        'zẓ'
    }
}

vim.keymap.set({ 'n', 'x', 'o' }, 'f', '<Plug>(leap)')
vim.keymap.set('n', 'F', '<Plug>(leap-from-window)')

-- E.g., `gs{leap}$y` or `ygs{leap}$`, where {leap}, as usual, means
-- {char1}{char2}{label?}. The linewise version can also take [count],
-- e.g. `d2gS{leap}` deletes two lines.
vim.keymap.set({ 'n', 'o' }, 'gf', '<Plug>(leap-remote)')
vim.keymap.set({ 'n', 'o' }, 'gF', '<Plug>(leap-remote-linewise)')
-- Useful shortcut for a frequent operation: the same as remote-linewise,
-- except it auto-triggers even without [count] (`yR{leap}` copies a line).
vim.keymap.set({ 'o' }, 'R', '<Plug>(leap-remote-line)')
-- These commands expect another character as input before leaping, and
-- select the given text object at the destination (`yarp{leap}`).
vim.keymap.set({ 'x', 'o' }, 'ar', '<Plug>(leap-remote-text-object)')
vim.keymap.set({ 'x', 'o' }, 'ir', '<Plug>(leap-remote-inner-text-object)')

vim.keymap.set({ 'x', 'o' }, 'an', function ()
    require('leap.treesitter').select { opts = require('leap.user').with_traversal_keys('n', 'N') }
end)

vim.keymap.set({ 'n', 'x', 'o' }, ',,', function()
  local line = vim.fn.line('.')
  -- Skip 3-3 lines around the cursor.
  local top, bot = unpack { math.max(1, line - 1), line + 1 }
  require('leap').leap {
    pattern = '\\v(%<'..top..'l|%>'..bot..'l)$',
    windows = { vim.fn.win_getid() },
    opts = { safe_labels = '' }
  }
end)
