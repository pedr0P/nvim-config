require('lspsaga').setup({
    ui = {
        border = "rounded",                            -- Options: "single", "double", "rounded", "solid", "shadow"
        devicon = true,                                -- Use nvim-web-devicons
        title = true,                                  -- Render title in header
        code_action = "💡",                          -- Indicator
        actionfix = "✨",                             -- Action indicator
        lines = { "╰", "├", "│", "─", "╭" }, -- Tree lines
    },
    definition = {
        width = 0.6,
        height = 0.5,                                                                -- Dimensions
        keys = { edit = "<CR>", vsplit = "v", tabe = "t", quit = { "q", "<ESC>" } }, -- Keys
    },
    diagnostic = {
        show_code_action = true,
        jump_num_shortcut = true, -- Numbers 1-9
        max_width = 0.8,
        max_height = 0.6,         -- Dimensions
        keys = { exec_action = "l", quit = { "q", "<ESC>" }, expand_or_collapse = "<CR>" },
    },
    finder = {
        max_height = 0.5,
        left_width = 0.3,                                                                             -- Dimensions
        default = "def+ref+imp",                                                                      -- Default view
        layout = "normal",                                                                            -- "normal" or "float"
        keys = {
            shuttle = "[w",
            toggle_or_open = "o",
            vsplit = "v",
            tabe = "t",
            quit = { "q", "<ESC>" },
        }, -- Keys
    },
    hover = { max_width = 0.6, max_height = 0.6, open_link = "gx", open_cmd = "!open" },
    rename = {
        in_select = true,
        auto_save = false,
        project_with_preview = true,
        keys = {
            quit = "<ESC>",
            exec = "<CR>",
        },
    },                                                                      -- Keys
    outline = {
        win_position = "right",
        win_width = 30,
        auto_preview = true,
        detail = true,
        auto_close = true,
        close_after_jump = false,
        keys = {
            toggle_or_jump = "o",
            quit = { "q", "<ESC>" },
        },
    }, -- Outline config
    callhierarchy = {
        show_detail = true,
        keys = {
            edit = "<CR>",
            vsplit = "v",
            tabe = "t",
            quit = { "q", "<ESC>" },
        },
    },
    lightbulb = {
        enable = true,
        sign = true,
        debounce = 10,
        sign_priority = 40,
        virtual_text = false,
    },                                                                                        -- Lightbulb config
    scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },                                                                                                                      -- Scroll keys
})
