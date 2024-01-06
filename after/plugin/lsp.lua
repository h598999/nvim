local lsp = require('lsp-zero')
lsp.preset("recommended")

lsp.ensure_installed({
	'jdtls',
	'rust_analyzer',
})

lsp.nvim_workspace()

local cmp = require('cmp')

lsp.set_preferences({
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

cmp.setup({
	mapping = {
		['<CR>'] = cmp.mapping.confirm({select = true}),
	}
})

lsp.on_attach(function(client,bufnr)
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, ots)
    vim.keymap.set("n", "<leader>mm",function() vim.diagnostic.open_float() end, opts) 
end);
lsp.setup()
vim.diagnostic.config({
    virtual_text = true
})
