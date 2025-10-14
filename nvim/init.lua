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
vim.opt.updatetime = 15
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.fillchars = { eob=" " }
vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.laststatus = 3
vim.g.mapleader = " "

-- Keymap
vim.keymap.set('n', '<F4>', '/')
vim.keymap.set('n', '<F4><F4>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<F5>', ':NvimTreeToggle<CR>', { noremap=true, silent=true })
vim.keymap.set('n', '<F9>', ':FloatermToggle<CR>')

-- Require plugins
require("neovim-aerial")
require("neovim-autopairs")
require("neovim-bufferlines")
require("neovim-colorscheme")
require("neovim-floaterm")
require("neovim-lspconfig")
require("neovim-lualine")
require("neovim-nvim-cmp")
require("neovim-notify")
require("neovim-nvim-tree")
require("neovim-telescope")
require("neovim-treesitter")
require("neovim-vimplug")
