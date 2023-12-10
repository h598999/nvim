-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use 'mfussenegger/nvim-jdtls'
  -- use {
  -- 	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- 	  -- or                            , branch = '0.1.x',
  --     --
  -- 	  requires = { {'nvim-lua/plenary.nvim'} }
  -- }
  use({"terrortylor/nvim-comment",
    config = function()
  require('nvim_comment').setup()
  end })

  use({ 'rose-pine/neovim', as = 'rose-pine' })

  use({
      "coffebar/neovim-project",
      config = function()
          -- enable saving the state of plugins in the session
          vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
          -- setup neovim-project plugin
          require("neovim-project").setup {
              projects = { -- define project roots
              "~/Skule/*",
              "~/Prosjekt/",
              "~/.config/*",
          },
      }
  end,
  requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "Shatur/neovim-session-manager" },
  }
})


  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  use {'treatybreaker/neogit', branch='feat/author-column-recent-commits', requires =  'nvim-lua/plenary.nvim'}
  use {
      "loctvl842/monokai-pro.nvim",
      config = function()
          require("monokai-pro").setup({
              transparent_background = true,
              terminal_colors = true,
              devicons = true, -- highlight the icons of `nvim-web-devicons`
              styles = {
                  comment = { italic = true },
                  keyword = { italic = true }, -- any other keyword
                  type = { italic = true }, -- (preferred) int, long, char, etc
                  storageclass = { italic = true }, -- static, register, volatile, etc
                  functions = { bold = true, undercurl = true },
                  structure = { italic = true }, -- struct, union, enum, etc
                  parameter = { italic = true }, -- parameter pass in function
                  annotation = { italic = true },
                  tag_attribute = { italic = true }, -- attribute of tag in reactjs
              },
              filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
              --Enable this will disable filter option
              day_night = {
                  enable = false, -- turn off by default
                  day_filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
                  night_filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
              },
              inc_search = "background", -- underline | background
              background_clear = {
                  "float_win",
                  "toggleterm",
                  "telescope",
                  "which-key",
                  "renamer"
              },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
              plugins = {
                  bufferline = {
                      underline_selected = false,
                      underline_visible = false,
                  },
                  indent_blankline = {
                      context_highlight = "pro", -- default | pro
                      context_start_underline = false,
                  },
              },
              ---@param c Colorscheme
              override = function(c) end,})

          end}

          use { "catppuccin/nvim", as = "catppuccin" }
          use ('ribru17/bamboo.nvim')


use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use{'nvim-treesitter/nvim-treesitter-context', as ="context"}
    use {
        'javiorfo/nvim-wildcat',
        requires = 'javiorfo/nvim-popcorn'
    }
use('ThePrimeagen/harpoon')
use ('mbbill/undotree')
use('tpope/vim-fugitive')
use ('m4xshen/autoclose.nvim')
use('ThePrimeagen/vim-be-good')
use("folke/zen-mode.nvim")
use('brenoprata10/nvim-highlight-colors')
use ('nvim-tree/nvim-web-devicons')
use ('github/copilot.vim')
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',

      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},
          -- Snippets
          {'rafamadriz/friendly-snippets'},
        {'L3MON4D3/LuaSnip'},
  }
}

use({
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup {
            icons = true,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    end
})

use ('ray-x/web-tools.nvim')
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

 use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify"},

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      }
    },
    config = function ()
      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "󰌵", texthl = "DiagnosticSignHint"})
    end
}
end)

