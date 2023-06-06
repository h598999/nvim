local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pd', function()
	builtin.grep_string({Search = vim.fn.input("Grep > ") });	
end)
