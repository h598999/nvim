-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

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

--use({
--    'rose-pine/neovim',
--    as = 'rose-pine',
--    config = function()
--        vim.cmd('colorscheme rose-pine')
--    end
--})

use ('marko-cerovac/material.nvim')
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('ThePrimeagen/harpoon')
use ('mbbill/undotree')
use('tpope/vim-fugitive')
use ('m4xshen/autoclose.nvim')
use('ThePrimeagen/vim-be-good')
use("folke/zen-mode.nvim")
use('brenoprata10/nvim-highlight-colors')

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

end)

