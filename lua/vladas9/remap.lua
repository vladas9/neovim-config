vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>h', ':split<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Left>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Down>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Up>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Right>', '<C-w>l', {noremap = true, silent = true})

