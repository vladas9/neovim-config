vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
map('n', '<A-j>', ':m .+1<CR>==', opts)
map('n', '<A-k>', ':m .-2<CR>==', opts)
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)
map('n', '<leader>h', ':split<CR>', opts)
map('n', '<leader>v', ':vsplit<CR>',  opts)
map('n', '<A-Left>', '<C-w>h',  opts)
map('n', '<A-Down>', '<C-w>j',  opts)
map('n', '<A-Up>', '<C-w>k', opts)
map('n', '<A-Right>', '<C-w>l', opts)
