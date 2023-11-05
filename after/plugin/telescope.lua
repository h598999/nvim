local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--vim.keymap.set('n', '<leader>pd', function()
	--builtin.grep_string({Search = vim.fn.input("Grep > ") });
--end)
--
vim.keymap.set('n', '<leader>pd', function()
    local search_term = vim.fn.input("Grep > ")
    builtin.grep_string({ search = search_term })
end, { noremap = true, silent = true })
