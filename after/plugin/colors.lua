
function ColorMyPencils(color)
	color = color or "monokai-pro"
	vim.cmd.colorscheme(color)

end

ColorMyPencils()
vim.cmd(":hi Cursor guifg=#9d1ab8 guibg= #9d1ab8")
