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
vim.opt.hlsearch = false
vim.opt.timeoutlen = 180
vim.opt.updatetime = 15
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.keymap.set('n', '<F1>', ':enew<CR>')
vim.keymap.set('n', '<F2>', ':e ')
vim.keymap.set('n', '<F3>', ':w<CR>')
vim.keymap.set('n', '<F3><F3>', ':wq!<CR>')
vim.keymap.set('n', '<F4>', '/')
vim.keymap.set('n', '<F4><F4>', ':Telescope find_files<CR>')
vim.keymap.set('n', 'q', ':q<CR>')
vim.keymap.set('n', 'qq',':q!<CR>')
vim.keymap.set('n', '<F9>', ':FloatermToggle<CR>')
vim.opt.fillchars = { eob=" " }
vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.laststatus = 2

-- Require plugins
require("neovim-vimplug")
require("neovim-treesitter")
require("neovim-colorscheme")
require("neovim-tree-folder")
require("neovim-autopairs")
require("neovim-telescope")
require("neovim-lualine")
require("neovim-lspconfig")
require("neovim-nvim-cmp")
require("neovim-bufferlines")
require("neovim-floaterm")
