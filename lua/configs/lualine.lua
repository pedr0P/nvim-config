local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- local colors = {
--     normal = '#5EA1FF',
--     insert = '#5EFF6C',
--     -- visual = '#FB5DED',
--     -- visual = '#957FB8',
--     visual = '#FF4DED',
--     replace = '#FF4485',
--     -- text = '#C0CAF5',
--     -- text = '#9199BB',
--     text = '#D3DAF5',
--     bg = '#0c0d0e',
--     bgl = '#111111',
--     grey = '#a0a1a7',
--     light_green = '#83a598',
--     orange = '#fe8019',
--     green = '#8ec07c',
-- }

-- local theme = {
--     normal = {
--         a = { fg = colors.normal, bg = colors.bg, gui = "bold" },
--         b = { fg = colors.text, bg = colors.bg, gui = "bold" },
--         c = { fg = colors.text, bg = colors.bgl },
--         z = { fg = colors.normal, bg = colors.bg, gui = "bold" },
--     },
--     insert = {
--         a = { fg = colors.insert, bg = colors.bg, gui = "bold" },
--         b = { fg = colors.text, bg = colors.bg, gui = "bold" },
--         c = { fg = colors.text, bg = colors.bg },
--         z = { fg = colors.insert, bg = colors.bg, gui = "bold" },
--     },
--     visual = {
--         a = { fg = colors.visual, bg = colors.bg, gui = "bold" },
--         b = { fg = colors.text, bg = colors.bg, gui = "bold" },
--         c = { fg = colors.text, bg = colors.bg },
--         z = { fg = colors.visual, bg = colors.bg, gui = "bold" },
--     },
--     replace = {
--         a = { fg = colors.replace, bg = colors.bg, gui = "bold" },
--         b = { fg = colors.text, bg = colors.bg, gui = "bold" },
--         c = { fg = colors.text, bg = colors.bg },
--         z = { fg = colors.replace, bg = colors.bg, gui = "bold" },
--     },
-- }


lualine.setup({
    options = {
        icons_enabled = true,
        theme = auto,
        component_separators = { left = "", right = "" },
        -- component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 50,
            tabline = 500,
            winbar = 500,
        },
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1, } },
        lualine_x = { "grapple", "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
})

-- Ideas:
-- sections = {
--   lualine_a = {
--     {
--       'mode',
--       icons_enabled = true, -- Enables the display of icons alongside the component.
--       -- Defines the icon to be displayed in front of the component.
--       -- Can be string|table
--       -- As table it must contain the icon as first entry and can use
--       -- color option to custom color the icon. Example:
--       -- {'branch', icon = ''} / {'branch', icon = {'', color={fg='green'}}}
--
--       -- icon position can also be set to the right side from table. Example:
--       -- {'branch', icon = {'', align='right', color={fg='green'}}}
--       icon = nil,
--
--       separator = nil,      -- Determines what separator to use for the component.
--                             -- Note:
--                             --  When a string is provided it's treated as component_separator.
--                             --  When a table is provided it's treated as section_separator.
--                             --  Passing an empty string disables the separator.
--                             --
--                             -- These options can be used to set colored separators
--                             -- around a component.
--                             --
--                             -- The options need to be set as such:
--                             --   separator = { left = '', right = ''}
--                             --
--                             -- Where left will be placed on left side of component,
--                             -- and right will be placed on its right.
--                             --
--
--       cond = nil,           -- Condition function, the component is loaded when the function returns `true`.
--
--       draw_empty = false,   -- Whether to draw component even if it's empty.
--                             -- Might be useful if you want just the separator.
--
--       -- Defines a custom color for the component:
--       --
--       -- 'highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' } | function
--       -- Note:
--       --  '|' is synonymous with 'or', meaning a different acceptable format for that placeholder.
--       -- color function has to return one of other color types ('highlight_group_name' | { fg = '#rrggbb'|cterm_value(0-255)|'color_name(red)', bg= '#rrggbb', gui='style' })
--       -- color functions can be used to have different colors based on state as shown below.
--       --
--       -- Examples:
--       --   color = { fg = '#ffaa88', bg = 'grey', gui='italic,bold' },
--       --   color = { fg = 204 }   -- When fg/bg are omitted, they default to the your theme's fg/bg.
--       --   color = 'WarningMsg'   -- Highlight groups can also be used.
--       --   color = function(section)
--       --      return { fg = vim.bo.modified and '#aa3355' or '#33aa88' }
--       --   end,
--       color = nil, -- The default is your theme's color for that section and mode.
--
--       -- Specify what type a component is, if omitted, lualine will guess it for you.
--       --
--       -- Available types are:
--       --   [format: type_name(example)], mod(branch/filename),
--       --   stl(%f/%m), var(g:coc_status/bo:modifiable),
--       --   lua_expr(lua expressions), vim_fun(viml function name)
--       --
--       -- Note:
--       -- lua_expr is short for lua-expression and vim_fun is short for vim-function.
--       type = nil,
--
--       padding = 1, -- Adds padding to the left and right of components.
--                    -- Padding can be specified to left or right independently, e.g.:
--                    --   padding = { left = left_padding, right = right_padding }
--
--       fmt = nil,   -- Format function, formats the component's output.
--                    -- This function receives two arguments:
--                    -- - string that is going to be displayed and
--                    --   that can be changed, enhanced and etc.
--                    -- - context object with information you might
--                    --   need. E.g. tabnr if used with tabs.
--       on_click = nil, -- takes a function that is called when component is clicked with mouse.
--                    -- the function receives several arguments
--                    -- - number of clicks in case of multiple clicks
--                    -- - mouse button used (l(left)/r(right)/m(middle)/...)
--                    -- - modifiers pressed (s(shift)/c(ctrl)/a(alt)/m(meta)...)
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'buffers',
--       show_filename_only = true,   -- Shows shortened relative path when set to false.
--       hide_filename_extension = false,   -- Hide filename extension when set to true.
--       show_modified_status = true, -- Shows indicator when the buffer is modified.
--
--       mode = 0, -- 0: Shows buffer name
--                 -- 1: Shows buffer index
--                 -- 2: Shows buffer name + buffer index
--                 -- 3: Shows buffer number
--                 -- 4: Shows buffer name + buffer number
--
--       max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
--                                           -- it can also be a function that returns
--                                           -- the value of `max_length` dynamically.
--       filetype_names = {
--         TelescopePrompt = 'Telescope',
--         dashboard = 'Dashboard',
--         packer = 'Packer',
--         fzf = 'FZF',
--         alpha = 'Alpha'
--       }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
--
--       -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
--       use_mode_colors = false,
--
--       buffers_color = {
--         -- Same values as the general color option can be used here.
--         active = 'lualine_{section}_normal',     -- Color for active buffer.
--         inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
--       },
--
--       symbols = {
--         modified = ' ●',      -- Text to show when the buffer is modified
--         alternate_file = '#', -- Text to show to identify the alternate file
--         directory =  '',     -- Text to show when the buffer is a directory
--       },
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'datetime',
--       -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
--       style = 'default'
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'diagnostics',
--
--       -- Table of diagnostic sources, available sources are:
--       --   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
--       -- or a function that returns a table as such:
--       --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
--       sources = { 'nvim_diagnostic', 'coc' },
--
--       -- Displays diagnostics for the defined severity types
--       sections = { 'error', 'warn', 'info', 'hint' },
--
--       diagnostics_color = {
--         -- Same values as the general color option can be used here.
--         error = 'DiagnosticError', -- Changes diagnostics' error color.
--         warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
--         info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
--         hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
--       },
--       symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
--       colored = true,           -- Displays diagnostics status in color if set to true.
--       update_in_insert = false, -- Update diagnostics in insert mode.
--       always_visible = false,   -- Show diagnostics even if there are none.
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'diff',
--       colored = true, -- Displays a colored diff status if set to true
--       diff_color = {
--         -- Same color values as the general color option can be used here.
--         added    = 'LuaLineDiffAdd',    -- Changes the diff's added color
--         modified = 'LuaLineDiffChange', -- Changes the diff's modified color
--         removed  = 'LuaLineDiffDelete', -- Changes the diff's removed color you
--       },
--       symbols = {added = '+', modified = '~', removed = '-'}, -- Changes the symbols used by the diff.
--       source = nil, -- A function that works as a data source for diff.
--                     -- It must return a table as such:
--                     --   { added = add_count, modified = modified_count, removed = removed_count }
--                     -- or nil on failure. count <= 0 won't be displayed.
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'fileformat',
--       symbols = {
--         unix = '', -- e712
--         dos = '',  -- e70f
--         mac = '',  -- e711
--       }
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'filename',
--       file_status = true,      -- Displays file status (readonly status, modified status)
--       newfile_status = false,  -- Display new file status (new file means no write after created)
--       path = 0,                -- 0: Just the filename
--                                -- 1: Relative path
--                                -- 2: Absolute path
--                                -- 3: Absolute path, with tilde as the home directory
--                                -- 4: Filename and parent dir, with tilde as the home directory
--
--       shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
--                                -- for other components. (terrible name, any suggestions?)
--       symbols = {
--         modified = '[+]',      -- Text to show when the file is modified.
--         readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
--         unnamed = '[No Name]', -- Text to show for unnamed buffers.
--         newfile = '[New]',     -- Text to show for newly created file before first write
--       }
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'filetype',
--       colored = true,   -- Displays filetype icon in color if set to true
--       icon_only = false, -- Display only an icon for filetype
--       icon = { align = 'right' }, -- Display filetype icon on the right hand side
--       -- icon =    {'X', align='right'}
--       -- Icon string ^ in table is ignored in filetype component
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'encoding',
--       -- Show '[BOM]' when the file has a byte-order mark
--         show_bomb = false,
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'searchcount',
--       maxcount = 999,
--       timeout = 500,
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'tabs',
--       tab_max_length = 40,  -- Maximum width of each tab. The content will be shorten dynamically (example: apple/orange -> a/orange)
--       max_length = vim.o.columns / 3, -- Maximum width of tabs component.
--                                       -- Note:
--                                       -- It can also be a function that returns
--                                       -- the value of `max_length` dynamically.
--       mode = 0, -- 0: Shows tab_nr
--                 -- 1: Shows tab_name
--                 -- 2: Shows tab_nr + tab_name
--
--       path = 0, -- 0: just shows the filename
--                 -- 1: shows the relative path and shorten $HOME to ~
--                 -- 2: shows the full path
--                 -- 3: shows the full path and shorten $HOME to ~
--
--       -- Automatically updates active tab color to match color of other components (will be overidden if buffers_color is set)
--       use_mode_colors = false,
--
--       tabs_color = {
--         -- Same values as the general color option can be used here.
--         active = 'lualine_{section}_normal',     -- Color for active tab.
--         inactive = 'lualine_{section}_inactive', -- Color for inactive tab.
--       },
--
--       show_modified_status = true,  -- Shows a symbol next to the tab name if the file has been modified.
--       symbols = {
--         modified = '[+]',  -- Text to show when the file is modified.
--       },
--
--       fmt = function(name, context)
--         -- Show + if buffer is modified in tab
--         local buflist = vim.fn.tabpagebuflist(context.tabnr)
--         local winnr = vim.fn.tabpagewinnr(context.tabnr)
--         local bufnr = buflist[winnr]
--         local mod = vim.fn.getbufvar(bufnr, '&mod')
--
--         return name .. (mod == 1 and ' +' or '')
--       end
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'windows',
--       show_filename_only = true,   -- Shows shortened relative path when set to false.
--       show_modified_status = true, -- Shows indicator when the window is modified.
--
--       mode = 0, -- 0: Shows window name
--                 -- 1: Shows window index
--                 -- 2: Shows window name + window index
--
--       max_length = vim.o.columns * 2 / 3, -- Maximum width of windows component,
--                                           -- it can also be a function that returns
--                                           -- the value of `max_length` dynamically.
--       filetype_names = {
--         TelescopePrompt = 'Telescope',
--         dashboard = 'Dashboard',
--         packer = 'Packer',
--         fzf = 'FZF',
--         alpha = 'Alpha'
--       }, -- Shows specific window name for that filetype ( { `filetype` = `window_name`, ... } )
--
--       disabled_buftypes = { 'quickfix', 'prompt' }, -- Hide a window if its buffer's type is disabled
--
--       -- Automatically updates active window color to match color of other components (will be overidden if buffers_color is set)
--       use_mode_colors = false,
--
--       windows_color = {
--         -- Same values as the general color option can be used here.
--         active = 'lualine_{section}_normal',     -- Color for active window.
--         inactive = 'lualine_{section}_inactive', -- Color for inactive window.
--       },
--     }
--   }
-- }
-- sections = {
--   lualine_a = {
--     {
--       'lsp_status',
--       icon = '', -- f013
--       symbols = {
--         -- Standard unicode symbols to cycle through for LSP progress:
--         spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
--         -- Standard unicode symbol for when LSP is done:
--         done = '✓',
--         -- Delimiter inserted between LSP names:
--         separator = ' ',
--       },
--       -- List of LSP names to ignore (e.g., `null-ls`):
--       ignore_lsp = {},
--     }
--   }
-- }
