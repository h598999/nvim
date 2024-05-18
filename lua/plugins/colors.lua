return {
	-- "rose-pine/neovim",
	-- lazy = false,
	-- name = "rose-pine",
	-- priority = 1000,
	-- config = function()
	--     vim.cmd.colorscheme "rose-pine"
	--     vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
	--     vim.cmd(":hi Cursor guifg=white guibg= pink")
	--     vim.cmd(":hi linenr guifg=pink guibg=transparent") -- #03fce8
	--     require('rose-pine').setup({
	--         variant = "dawn", -- auto, main, moon, or dawn
	--         dark_variant = "dawn", -- main, moon, or dawn
	--         dim_inactive_windows = false,
	--         extend_background_behind_borders = false,
	--
	--         enable = {
	--             terminal = true,
	--             legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
	--             migrations = true, -- Handle deprecated options automatically
	--         },
	--
	--         styles = {
	--             bold = true,
	--             italic = true,
	--             transparency = true,
	--         },
	--
	--         groups = {
	--             border = "muted",
	--             link = "iris",
	--             panel = "surface",
	--
	--             error = "love",
	--             hint = "iris",
	--             info = "foam",
	--             note = "pine",
	--             todo = "rose",
	--             warn = "gold",
	--
	--             git_add = "foam",
	--             git_change = "rose",
	--             git_delete = "love",
	--             git_dirty = "rose",
	--             git_ignore = "muted",
	--             git_merge = "iris",
	--             git_rename = "pine",
	--             git_stage = "iris",
	--             git_text = "rose",
	--             git_untracked = "subtle",
	--
	--             h1 = "iris",
	--             h2 = "foam",
	--             h3 = "rose",
	--             h4 = "gold",
	--             h5 = "pine",
	--             h6 = "foam",
	--         },
	--
	--         highlight_groups = {
	--             Comment = { fg = "foam" },
	--             VertSplit = { fg = "muted", bg = "muted" },
	--         },
	--
	--         before_highlight = function(group, highlight, palette)
	--             -- Disable all undercurls
	--             -- if highlight.undercurl then
	--             --     highlight.undercurl = false
	--             -- end
	--             --
	--             -- Change palette colour
	--             -- if highlight.fg == palette.pine then
	--             --     highlight.fg = palette.foam
	--             -- end
	--         end,
	--     })
	-- end
	"tiagovla/tokyodark.nvim",
	config = function()
		require("tokyodark").setup({
			transparent_background = false, -- set background to transparent
			gamma = 1.00, -- adjust the brightness of the theme
			styles = {
				comments = { italic = true }, -- style for comments
				keywords = { italic = true }, -- style for keywords
				identifiers = { italic = true }, -- style for identifiers
				functions = {}, -- style for functions
				variables = {}, -- style for variables
			},
			custom_highlights = {} or function(highlights, palette)
				return {}
			end, -- extend highlights
			custom_palette = {} or function(palette)
				return {}
			end, -- extend palette
			terminal_colors = true, -- enable terminal colors
		}) -- calling setup is optional
		vim.cmd([[colorscheme tokyodark]])
	end,
}