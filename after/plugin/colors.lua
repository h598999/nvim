
function ColorMyPencils(color)
	color = color or "bamboo"
	vim.cmd.colorscheme(color)

end

require('bamboo').setup  {
    -- Main options --
    style = 'vulgaris', -- Choose between 'vulgaris' (regular) and 'multiplex' (greener)
    toggle_style_key = "<leader>ts", -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
    toggle_style_list = { 'vulgaris', 'multiplex' }, -- List of styles to toggle between (this option is essentially pointless now but will become useful if more style variations are added)
    transparent = true,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        conditionals = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = true, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}





ColorMyPencils()
vim.cmd(":hi Cursor guifg=black guibg= transparent")
vim.cmd(":hi linenr guifg=#03fce8 guibg=transparent")
