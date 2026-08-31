local show_dotfiles = true

local filter_show = function(fs_entry) return true end
local filter_hide = function(fs_entry)
  return not vim.startswith(fs_entry.name, ".")
end

require("mini.files").setup({
    content = {
        filter = filter_show, 
    },

    -- Window Geometry Profiles
    windows = {
        max_number = math.huge,     
        preview = true,             
        width_focus = 25,           
        width_nofocus = 15,         
        width_preview = 45,         
    },

    -- =============================================================================
    -- COLEMAK-DH DIRECTIONAL MAPPINGS
    -- =============================================================================
    mappings = {
        close       = "q",          -- Close the explorer
        go_in       = "<Space>",    -- Step into directory / Open file buffer
        go_in_plus  = "<CR>",       -- Enter and automatically close the explorer UI
        go_out      = "<C-Space>",           -- Step back out to parent directory
        go_out_plus = "<BS>",          -- Step out to parent directory and shift structural focus
        mark_goto   = "'",          
        mark_set    = "h",          
        reset       = "<C-CR>",       -- Reset view back to current working root
        show_help   = "gh",         -- Changed to 'gh' so 'g?' doesn't conflict with Colemak bindings
        synchronize = "=",          -- Save file creations, renames, and deletions
        trim_left   = "<",          
        trim_right  = ">",          
    },

    options = {
        permanent_delete = false,   
        use_as_default_explorer = true, 
    },
})

-- =============================================================================
-- WINDOW STYLE HOOK & OVERLAYS
-- =============================================================================
vim.api.nvim_create_autocmd("User", {
    pattern = "MiniFilesBufferCreate", -- Fires for EVERY single column created (Forward OR Backward)
    callback = function(args)
        local buf_id = args.data.buf_id

        -- Force Colemak-DH vertical line movement inside the mini.files buffer
        -- (Maps 'n' to down and 'e' to up inside the explorer panel)
        vim.keymap.set("n", "n", "gj", { buffer = buf_id, remap = false, silent = true })
        vim.keymap.set("n", "e", "gk", { buffer = buf_id, remap = false, silent = true })

        -- Map Esc to close using the true global reference wrapper
        vim.keymap.set("n", "<Esc>", function()
            _G.MiniFiles.close()
        end, { buffer = buf_id, desc = "Close" })

        -- Bind Space on every single generated pane using global reference
        vim.keymap.set("n", "<Space>", function()
            _G.MiniFiles.go_in({ close_on_file = true })
        end, { buffer = buf_id, desc = "Open file and close explorer" })

        -- Map 't.' to toggle hidden files
        vim.keymap.set('n', 't.', function()
            show_dotfiles = not show_dotfiles
            local new_filter = show_dotfiles and filter_show or filter_hide
            require('mini.files').refresh({ content = { filter = new_filter } })
        end, { buffer = buf_id, desc = "Toggle hidden files" })
    end,
})

-- =============================================================================
-- WINDOW STYLE HOOK
-- =============================================================================
vim.api.nvim_create_autocmd("User", {
    pattern = "MiniFilesWindowOpen",
    callback = function(args)
        local win_id = args.data.win_id

        -- Apply floating visual rounded boundaries
        vim.api.nvim_win_set_config(win_id, {
            border = "rounded", 
        })
    end,
})
