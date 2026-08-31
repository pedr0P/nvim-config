local fzf = require("fzf-lua")
fzf.setup({
    silent = true,
    -- 1. GLOBAL UI & FLOATING WINDOW LAYOUT
    winopts = {
        height     = 0.85,            -- Window height (85% of screen)
        width      = 0.80,            -- Window width (80% of screen)
        row        = 0.35,            -- Vertical position offset
        col        = 0.50,            -- Horizontal position offset
        border     = "rounded",       -- Styles: 'single', 'double', 'rounded', 'solid', 'shadow'
        backdrop   = 60,              -- Dim transparency value of the background workspace (0-100)
        fullscreen = false,           -- Set true to force full screen instantly
        preview    = {
            border       = "rounded",   -- Preview pane border style
            wrap         = "wrap",    -- Wrap long code lines: 'wrap' or 'nowrap'
            default      = "bat",       -- Code highlighter engine: 'bat', 'cat', or 'builtin'
            layout       = "bot",      -- Layout profile: 'horizontal', 'vertical', or 'flex'
            horizontal   = "right:50%", -- On wide screens, put preview pane on the right at 50% width
            vertical     = "down:45%",  -- On small split screens, put preview down at 45% height
        },
    },

    -- 2. FUZZY FINDER CORE BEHAVIORS
    fzf_opts = {
        ["--ansi"]   = "",            -- Enable terminal color codes
        ["--info"]   = "inline-right",-- Render total matches layout inline to the right
        ["--height"] = "100%",
        ["--layout"] = "reverse",     -- Match items list prints from top-to-bottom
        ["--border"] = "none",
    },

    -- 3. EXPLICIT INTERFACE KEYMAPS (Colemak-DH Custom Injections)
    keymap = {
        builtin = {
            -- Global navigation shortcuts inside the active fzf floating input panel
            ["<F1>"]     = "toggle-help",
            ["<F2>"]     = "toggle-fullscreen",
            ["<F3>"]     = "toggle-preview-wrap",
            ["<F4>"]     = "toggle-preview",
            ["<C-f>"]    = "preview-page-down",
            ["<C-b>"]    = "preview-page-up",
        },
        fzf = {
            -- Core item navigation behaviors (Maps Right-Middle & Right-Ring to movement)
            ["ctrl-d"]   = "preview-page-down",
            ["ctrl-u"]   = "preview-page-up",
            ["ctrl-n"]   = "down",      -- Fallback system navigation
            ["ctrl-e"]   = "up",        -- Fallback system navigation
            ["ctrl-a"]   = "toggle-all",
        },
    },

    -- 4. PROVIDER-SPECIFIC HIGHLIGHT PARAMETERS
    files = {
        cmd          = "find . -type f -not -path '*/.*'", -- Search engine command execution string
        multiprocess = true,          -- Run file parsing asynchronously to optimize memory
        git_icons    = true,          -- Render file git modifications indicators statuses
        file_icons   = true,          -- Use web-devicons icons layout next to file strings
    },
    grep = {
        -- cmd          = "rg --vimgrep --smart-case --hidden --glob '!.git/'", -- Elite ripgrep speed parameters
        rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e",
        input_prompt = "Project Search ❯ ",
    },
    buffers = {
        sort_lastused = true,         -- Sort buffer list matching your immediate file editing history
        show_unloaded = true,         
    },
})

-- =============================================================================
-- MASTER MASTER LEADER MAPPINGS (<C-c> & Comma Integrated)
-- =============================================================================
local function map(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

-- Primary Search Engine Mappings (<C-c> Stack)
map("n", "<C-c>m",  fzf.builtin,                 "FzfLua Main Command Hub")
map("n", "<C-c>f",  fzf.files,                   "Fzf File Finder (By Name)")
map("n", "<C-c>b",  fzf.buffers,                 "Fzf Active Open Buffers")
map("n", "<C-c>/",  fzf.live_grep,               "Global Ripgrep (Search File Content)")
map("n", "<C-c>Uc", fzf.colorschemes,            "Interactive Theme Switcher Menu")

-- Colemak-DH Home Row Modification / Alternative (Using 's' for simple fast file text grep)
map("n", "<C-c>s",  fzf.grep_curbuf,             "Search Text Inside Current File Only")

-- LSP Diagnostic Parsing Mappings
map("n", "<C-c>d",  fzf.lsp_document_diagnostics,"Find Local Document LSP Errors")
map("n", "<C-c>D",  fzf.lsp_workspace_diagnostics,"Find Project-Wide Workspace LSP Errors")

-- Git State Tracking Mappings
map("n", "<C-c>gc", fzf.git_commits,             "View Repository Git Commits Tree")
map("n", "<C-c>gs", fzf.git_status,              "View Repository Active File Git Status Changes")
