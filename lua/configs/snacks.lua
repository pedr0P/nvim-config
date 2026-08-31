require("snacks").setup({
  -- 1. UTILITY & BACKEND MODULES
  bigfile = {
    enabled = true,
    size = 1.5 * 1024 * 1024, -- 1.5MB max before optimization kicks in
    -- What to disable on massive files:
    notify = false,
  },
  bufdelete = { enabled = true }, -- Clean buffer closing without breaking splits
  quickfile = { enabled = true }, -- Ultra-fast pre-loading structure on startup

  -- 2. PICKER SYSTEM (Disabled to favor your fzf-lua)
  picker = { enabled = false },

  -- 3. UI, WINDOWS & VISUALS
  dashboard = {
    enabled = false,
    sections = {
      { section = "header" },
      { section = "keys", gap = 1, padding = 1 },
      {
          section = "terminal",
          cmd = "echo 'Vai fazer trabaio!'",
          height = 1,
          padding = 1,
      }
    },
  },
  indent = {
    enabled = true,
    priority = 1,
    char = "│",
    only_scope = false, -- highlight only the current scope block
    only_current = false,
    animate = { enabled = false }, -- set to true if you like animations
  },
  notifier = {
    enabled = true,
    timeout = 3000, -- milliseconds toast stays on screen
    width = { min = 40, max = 0.4 },
    height = { min = 1, max = 0.6 },
    margin = { top = 0, right = 1, bottom = 1 },
    padding = true,
    sort = { "level", "added" }, -- priority ordering
    level = vim.log.levels.INFO,
  },
  scroll = {
    enabled = true,
    animate = {
      duration = { step = 15, total = 250 },
      easing = "linear",
    },
  },
  statuscolumn = { enabled = true }, -- Clean layout for line numbers, folds, and git signs

  -- 4. ENVIRONMENT & FOCUS MODES
  dim = {
    enabled = true,
    scope = { min_size = 5, max_size = 20 },
  },
  zen = {
    enabled = true,
    toggles = { dim = false, git = false },
    win = {
      width = 120,
      backdrop = { transparent = false, blend = 40 },
    },
  },

  -- 5. WORKSPACE HARDWARE UTILITIES
  terminal = {
    enabled = true,
    win = { style = "terminal" },
  },
  scratch = {
    enabled = true,
    name = "Scratch",
    ft = "markdown",
    keys = { ["<cr>"] = "execute" },
  },
  image = {
    enabled = true, -- Crucial backend for terminal graphic previews (Ghostty, Kitty, etc)
    doc = { inline = true },
  },

  -- 6. INTEGRATED GIT TOOLS
  git = { enabled = true },
  gitbrowse = { enabled = true },

  -- 7. MISCELLANEOUS COMFORT FEATURES
  input = { enabled = true },  -- Sleeker UI replacement for vim.ui.input
  scope = { enabled = true },  -- Smart text-object jump targets based on tree-sitter
  words = { enabled = true },  -- Highlighting matching words under cursor natively
})

-- =============================================================================
-- KEYMAP CONFIGURATIONS
-- =============================================================================
local snacks = require("snacks")

-- Global Toggle Functions
vim.keymap.set("n", "<C-c>un", function() snacks.notifier.hide() end, { desc = "Dismiss All Notifications" })
vim.keymap.set("n", "<C-c>bd", function() snacks.bufdelete() end, { desc = "Delete Buffer Safely" })
vim.keymap.set("n", "<C-c>gB", function() snacks.gitbrowse() end, { desc = "Open File/Line in Web Browser" })
vim.keymap.set("n", "<C-c>gb", function() snacks.git.blame_line() end, { desc = "Inline Git Blame" })

-- Terminal Floating Windows
vim.keymap.set({ "n", "t" }, "<C-/>", function() snacks.terminal() end, { desc = "Toggle Floating Terminal" })
vim.keymap.set({ "n", "t" }, "<C-c>lg", function() snacks.terminal("lazygit") end, { desc = "Toggle Floating LazyGit" })

-- Focus Environments
vim.keymap.set("n", "<C-c>z", function() snacks.zen() end, { desc = "Toggle Zen Mode" })
vim.keymap.set("n", "<C-c>Z", function() snacks.zen.zoom() end, { desc = "Toggle Maximize Window Zoom" })

-- Scratchpad Creation
vim.keymap.set("n", "<C-c>ns", function() snacks.scratch() end, { desc = "Toggle Persistent Scratchpad" })
vim.keymap.set("n", "<C-c>nS", function() snacks.scratch.select() end, { desc = "Select Scratchpad History" })

