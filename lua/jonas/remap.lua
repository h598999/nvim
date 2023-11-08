vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>pv', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>S", vim.cmd.wa)
vim.keymap.set('t', "<leader>nn", vim.cmd.bd)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>gcc", "jkI//<esc>")
vim.keymap.set('n', '<leader>gv', ':Neogit<CR>', {noremap = true, silent = true})


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', 'gb', ':b#<CR>', { noremap = true, silent = true })

