-- Default config
vim.opt.compatible = false
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.timeoutlen = 180
vim.opt.updatetime = 20
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars = { eob=" " }
vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.laststatus = 3
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- Keymap
vim.keymap.set('n', '<F2>', '/')
vim.keymap.set('n', '<F3>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<F5>', ':NvimTreeToggle<CR>', { noremap=true, silent=true })
vim.keymap.set('n', '<F9>', ':FloatermToggle<CR>')

-- Require plugins
require("neovim-vimplug")
require("neovim-aerial")
require("neovim-autopairs")
require("neovim-bufferlines")
require("neovim-colorscheme")
require("neovim-lspconfig")
require("neovim-lualine")
require("neovim-nvim-cmp")
require("neovim-notify")
require("neovim-nvim-tree")
require("neovim-telescope")
require("neovim-toggleterm")
require("neovim-treesitter")
