-- Keymap

-- Change bufferworspace
vim.keymap.set("n", "<C-z>", "<C-w>", { noremap = true })
vim.keymap.set("n", "<C-z>", "<nop>")
vim.keymap.set("t", "<C-z>", "<C-\\><C-n><C-w>", { noremap = true })

-- Function - Class - Variable
vim.keymap.set("n", "<F1>", "<cmd>AerialToggle!<CR>", { noremap=true, silent=true })

-- Search text
vim.keymap.set('n', '<F2>', '/', { noremap=true, silent=true })

-- NvimTree && Telescope
vim.keymap.set('n', '<F3>', ':Telescope find_files<CR>', { noremap=true, silent=true })
vim.keymap.set('n', '<F5>', ':NvimTreeToggle<CR>', { noremap=true, silent=true })

-- Split
vim.keymap.set('n', '<F7>', ':sp<CR>', { noremap=true, silent=true })
vim.keymap.set('n', '<F8>', ':vs<CR>', { noremap=true, silent=true })

-- Terminal
vim.keymap.set('n', '<F9>', ':FloatermToggle<CR>', { noremap=true, silent=true })

-- Quit
vim.keymap.set('n', 'q', ':q<CR>', { noremap=true, silent=true })
vim.keymap.set('n', 'qq', ':q!<CR>', { noremap=true, silent=true })

-- Bufferline
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "bd", "<cmd>bdelete<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "bdd", "<cmd>bdelete!<CR>", { silent = true, noremap = true })
for i = 1, 9 do
    vim.keymap.set("n", "<leader>" .. i, "<cmd>BufferLineGoToBuffer " .. i .. "<CR>")
end

-- Resize bufferworkspace
vim.keymap.set('n', '<C-h>', '<cmd>vertical resize -1<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', '<cmd>vertical resize +1<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', '<cmd>resize +1<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', '<cmd>resize -1<CR>', { silent = true })

