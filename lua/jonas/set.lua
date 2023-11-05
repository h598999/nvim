vim.g.mapleader = " "
-- Makes it so that i can see the current linenumber
vim.opt.nu = true
-- Makes the linenumbers relative
vim.opt.relativenumber = true
-- Makes it so that the cursor blinks
vim.opt.guicursor ="n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
vim.opt.confirm = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

--Makes it so that there is always min 8 lines between cursor and end of screen
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Makes it so that yanked text is highlighted
vim.api.nvim_create_autocmd('TextYankPost', {
 group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 100}
  end,
})
