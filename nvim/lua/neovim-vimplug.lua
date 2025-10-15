vim.cmd([[
call plug#begin(expand('~/.config/nvim/pack/plugins/start'))

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-lualine/lualine.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-tree/nvim-tree.lua'

Plug 'windwp/nvim-autopairs'

Plug 'nvim-tree/nvim-web-devicons'

Plug 'akinsho/bufferline.nvim'

Plug 'ellisonleao/gruvbox.nvim'

Plug 'akinsho/toggleterm.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

Plug 'L3MON4D3/LuaSnip'

Plug 'rcarriga/nvim-notify'

Plug 'stevearc/aerial.nvim'

call plug#end()
]])
