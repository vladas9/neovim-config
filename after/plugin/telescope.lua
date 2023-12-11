local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files({
        find_command = {'rg', '--files', '--glob', '!.git/*', '--glob', '!venv/*'}
    })
end, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)
