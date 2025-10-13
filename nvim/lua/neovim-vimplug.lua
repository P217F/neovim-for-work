vim.cmd([[
call plug#begin(expand('~/.config/nvim/pack/plugins/start'))

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'    " Depenencies of telescope

Plug 'nvim-tree/nvim-tree.lua'

Plug 'windwp/nvim-autopairs'

Plug 'nvim-tree/nvim-web-devicons'

Plug 'akinsho/bufferline.nvim'

Plug 'ellisonleao/gruvbox.nvim'

Plug 'nvzone/floaterm'
Plug 'nvzone/volt'  " Dependencies of floaterm

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

Plug 'L3MON4D3/LuaSnip'

Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'

Plug 'rcarriga/nvim-notify'

Plug 'stevearc/aerial.nvim'

Plug 'ThePrimeagen/refactoring.nvim'

Plug 'folke/which-key.nvim'

call plug#end()
]])
