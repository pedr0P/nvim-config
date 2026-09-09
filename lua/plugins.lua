vim.deprecate = function() end

local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Common utilities:
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'onsails/lspkind.nvim'

-- LSP and Completion and Syntax Highlighting
    Plug ('nvim-treesitter/nvim-treesitter', { ['branch'] = 'main', ['do'] = ':TSUpdate' })
    Plug 'neovim/nvim-lspconfig'                                        -- Lsp
      Plug 'nvimdev/lspsaga.nvim'                                         -- LSP customization
      Plug 'antosha417/nvim-lsp-file-operations'                          -- LSP customization
    Plug 'L3MON4D3/LuaSnip'                                             -- Snip
    Plug 'saghen/blink.nvim'
    Plug ('saghen/blink.cmp', { ['do'] = ':BlinkCmp build' })
    Plug ('xzbdmw/colorful-menu.nvim')
    Plug ('stevearc/conform.nvim')

    Plug 'saghen/blink.lib'
    Plug 'rafamadriz/friendly-snippets'

-- QoL upgrades
    Plug 'ibhagwan/fzf-lua'
    Plug 'folke/snacks.nvim'
    Plug 'nvim-mini/mini.files'
      Plug '3rd/image.nvim'
    Plug 'folke/todo-comments.nvim'
    Plug 'numtostr/comment.nvim'
    Plug 'https://codeberg.org/andyg/leap.nvim.git'
    Plug 'nvim-mini/mini.surround'
    Plug 'rachartier/tiny-cmdline.nvim'
    Plug 'rcarriga/nvim-notify'
    Plug('chomosuke/typst-preview.nvim', { ['tag'] = 'v1.*' })
    -- Git
        Plug 'lewis6991/gitsigns.nvim'
        Plug 'NeogitOrg/neogit'
    Plug 'folke/which-key.nvim'
    Plug 'mbbill/undotree'
    Plug 'cbochs/grapple.nvim'
    Plug 'karb94/neoscroll.nvim'

-- Programming
    Plug 'windwp/nvim-autopairs'                                        -- ()[]{} Completion
    Plug 'stevearc/aerial.nvim'
    Plug 'CRAG666/code_runner.nvim'                                     -- Code Running
    Plug 'mfussenegger/nvim-dap'
    Plug 'AdeAttwood/Hex.nvim'
    Plug 'julian/lean.nvim'

-- Appearance
    Plug 'rafi/awesome-vim-colorschemes'                               -- Retro Scheme
    Plug 'NvChad/nvim-colorizer.lua'
    Plug 'nvim-lualine/lualine.nvim'                                   -- Status Bar
    Plug 'HiPhish/rainbow-delimiters.nvim'                             -- Colored Delimiters
    Plug 'benlubas/wrapping-paper.nvim'                                -- Cool plugin for text that goes off the screenpage
        Plug 'MunifTanjim/nui.nvim'                                -- Cool plugin for text that goes off the screenpage

-- Colorschemes
    -- Plug 'RRethy/base16-nvim'
    Plug('sainnhe/edge')
    Plug('navarasu/onedark.nvim')
    Plug('rebelot/kanagawa.nvim')
    Plug 'scottmckendry/cyberdream.nvim' 
    Plug('nyoom-engineering/oxocarbon.nvim')
    Plug('bluz71/vim-moonfly-colors')
    Plug('sainnhe/everforest')
    Plug('EdenEast/nightfox.nvim')
    Plug('whizikxd/naysayer-colors.nvim')
    Plug('yorickpeterse/vim-paper')
    Plug('Verf/deepwhite.nvim')
    Plug 'tiagovla/tokyodark.nvim' 
    Plug 'zenbones-theme/zenbones.nvim' 
    Plug 'bluz71/vim-nightfly-colors' 
    -- Plug 'rktjmp/lush.nvim'
    Plug 'davidosomething/vim-colors-meh'
    Plug '~/.config/nvim/cyber_real'
    Plug 'nvim-mini/mini.base16'

vim.call('plug#end')

local palette = require("stylix-palette")
require("mini.base16").setup({
    palette = palette
})

require('core.blink')
require('core.lsp')
require('core.conform')
require('core.lspsaga')

require('configs.aerial')
require('configs.autopairs')
require('configs.code_runner')
require('configs.comment')
require('configs.colorizer')
require('configs.dap')
require('configs.leap')
require('configs.hex')
require('configs.fzf')
require('configs.gitsigns')
require('configs.grapple')
require('configs.lualine')
require('configs.luasnip')
-- require('configs.tiny_cmdline')
require('configs.mini-files')
require('configs.neoscroll')
require('configs.mini-surround')
-- require('configs.snacks')
require('configs.todo-comments')
require('configs.treesitter')
require('configs.wrapping-paper')
require('configs.whichkey')
require('configs.zenmode')
