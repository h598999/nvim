-- Better Netrw
vim.g.netrw_banner = 0 -- Hide banner
vim.g.netrw_liststyle = 3 -- Tree-style view
vim.g.netrw_altv = 1 -- Open with right splitting
vim.g.netrw_quit_on_open = 1 -- Hide when opening a file
vim.g.netrw_preview = 0
vim.g.netrw_list_hide = (vim.fn["netrw_gitignore#Hide"]()) .. [[,\(^\|\s\s\)\zs\.\S\+]] -- hide .gitignore
vim.g.netrw_list_hide= (vim.fn["netrw_gitignore#Hide"]()) .. [[.*\.class$]] -- hide .class files for java
