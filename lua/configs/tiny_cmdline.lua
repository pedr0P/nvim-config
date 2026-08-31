require("vim._core.ui2").enable({})

vim.o.cmdheight = 0

require("tiny-cmdline").setup({
    -- Cmdline window width
    width = {
        value = "20%",  -- "N%" = fraction of editor columns, integer = absolute columns
        min = 40,       -- minimum width in columns
        max = 80,       -- maximum width in columns
    },

    -- Window position ("N%" = fraction of available space, integer = absolute columns/rows)
    position = {
        x = "100%",  -- horizontal: "0%" = left, "50%" = center, "100%" = right
        y = "99%",  -- vertical:   "0%" = top,  "50%" = center, "100%" = bottom
    },

    -- Border style for the floating window
    -- nil inherits vim.o.winborder at setup() time, falling back to "rounded"
    -- Set to "none" to disable the border
    border = "none",
    --- is empty, which is equivalent to "none". Valid values include:
    ---  "bold": Bold line box.
    ---  "double": Double-line box.
    ---  "none": No border.
    ---  "rounded": Like "single", but with rounded corners ("╭" etc.).
    ---  "shadow": Drop shadow effect, by blending with the background.
    ---  "single": Single-line box.
    ---  "solid": Adds padding by a single whitespace cell.
    ---  custom: comma-separated list of exactly 8 characters in clockwise
    ---  order starting from topleft. Example:

    -- Horizontal offset of the completion menu anchor from the window's left inner edge
    -- Used to align blink.cmp / nvim-cmp menus with the cmdline window
    -- menu_col_offset = -10,

    -- Cmdline types rendered at the bottom of the screen instead of centered
    -- "/" and "?" (search) are kept native by default
    native_types = { "/", "?" },
    -- native_types = {},

    -- Dynamic popup title (rendered on the floating border)
    -- Disabled by default; set enabled = true to opt in
    -- Has no effect when border = "none" or when the cmdline is rendered via native_types
    title = {
        enabled = false,
        pos = "center",  -- "left" | "center" | "right"
    },
    options = {
        hl = {
            border = "TinyCmdlineBorder",
            normal = "TinyCmdlineNormal",
        },
    },

    -- Optional callback invoked after every reposition
    on_reposition = require("tiny-cmdline").adapters.blink,
})

-- vim.api.nvim_set_hl(0, "TinyCmdlineBorder", { fg = get_hl_color("FloatBorder", "fg") })
-- vim.api.nvim_set_hl(0, "TinyCmdlineNormal", { bg = get_hl_color("NormalFloat", "bg") })
