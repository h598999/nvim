-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jonas/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/jonas/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/jonas/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/jonas/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jonas/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["autoclose.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/autoclose.nvim",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["bamboo.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/bamboo.nvim",
    url = "https://github.com/ribru17/bamboo.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  context = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["monokai-pro.nvim"] = {
    config = { "\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0�\5\1\0\5\0$\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\29\0005\4\28\0=\4\30\0035\4\31\0=\4 \3=\3!\0023\3\"\0=\3#\2B\0\2\1K\0\1\0\roverride\0\fplugins\21indent_blankline\1\0\2\22context_highlight\bpro\28context_start_underline\1\15bufferline\1\0\0\1\0\2\22underline_visible\1\23underline_selected\1\21background_clear\1\6\0\0\14float_win\15toggleterm\14telescope\14which-key\frenamer\14day_night\1\0\3\17night_filter\fclassic\15day_filter\fclassic\venable\1\vstyles\18tag_attribute\1\0\1\vitalic\2\15annotation\1\0\1\vitalic\2\14parameter\1\0\1\vitalic\2\14structure\1\0\1\vitalic\2\14functions\1\0\2\14undercurl\2\tbold\2\17storageclass\1\0\1\vitalic\2\ttype\1\0\1\vitalic\2\fkeyword\1\0\1\vitalic\2\fcomment\1\0\0\1\0\1\vitalic\2\1\0\5\20terminal_colors\2\27transparent_background\2\15inc_search\15background\rdevicons\2\vfilter\fclassic\nsetup\16monokai-pro\frequire\0" },
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/monokai-pro.nvim",
    url = "https://github.com/loctvl842/monokai-pro.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n1\0\1\4\0\3\0\0056\1\0\0009\1\1\1'\3\2\0B\1\2\1K\0\1\0\18Neotree close\bcmd\bvim� \1\0\b\0x\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\17\0004\3\3\0005\4\14\0003\5\15\0=\5\16\4>\4\1\3=\3\18\0025\3\19\0=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4!\0005\5 \0=\5\"\4=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\3=\3.\0024\3\0\0=\3/\0025\0030\0005\0041\0=\0042\0035\0044\0005\0053\0=\0055\0045\0056\0005\0067\0=\0068\5=\0059\0045\5:\0005\6;\0=\0068\5=\5<\4=\4=\3=\3>\0024\3\0\0=\3?\0025\3F\0005\4@\0004\5\0\0=\5A\0044\5\0\0=\5B\0044\5\0\0=\5C\0044\5\0\0=\5D\0044\5\0\0=\5E\4=\4G\0035\4H\0=\4I\0035\4\\\0005\5J\0005\6K\0005\aL\0=\a8\6=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\0055\6X\0=\6Y\0055\6Z\0=\6[\5=\5=\0045\5]\0=\5^\4=\4>\0034\4\0\0=\4/\3=\3_\0025\3a\0005\4`\0=\4I\0035\4k\0005\5b\0005\6c\0005\ad\0=\a8\6=\6M\0055\6e\0=\6O\0055\6f\0=\6Q\0055\6g\0=\6U\0055\6h\0=\6W\0055\6i\0=\6Y\0055\6j\0=\6[\5=\5=\4=\4>\3=\3l\0025\3w\0005\4m\0005\5n\0005\6o\0005\ap\0=\a8\6=\6M\0055\6q\0=\6O\0055\6r\0=\6Q\0055\6s\0=\6U\0055\6t\0=\6W\0055\6u\0=\6Y\0055\6v\0=\6[\5=\5=\4=\4>\3=\3#\2B\0\2\1K\0\1\0\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\a\agg\24git_commit_and_push\aga\17git_add_file\6A\16git_add_all\agr\20git_revert_file\agc\15git_commit\agu\21git_unstage_file\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\2\18show_unloaded\2\21group_empty_dirs\2\1\0\2\20leave_dirs_open\1\fenabled\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\t<up>\19move_cursor_up\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\n\6.\rset_root\6#\17fuzzy_sorter\6H\18toggle_hidden\6/\17fuzzy_finder\a]g\22next_git_modified\6D\27fuzzy_finder_directory\t<bs>\16navigate_up\a[g\22prev_git_modified\6f\21filter_on_submit\n<c-x>\17clear_filter\24follow_current_file\1\0\2\20leave_dirs_open\1\fenabled\1\19filtered_items\1\0\3\26hijack_netrw_behavior\17open_default\27use_libuv_file_watcher\1\21group_empty_dirs\2\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\16hide_hidden\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6C\15close_node\6r\vrename\6l\18focus_preview\18<2-LeftMouse>\topen\6q\17close_window\6x\21cut_to_clipboard\6w\28open_with_window_picker\6c\tcopy\6>\16next_source\6?\14show_help\6m\tmove\6s\16open_vsplit\6t\16open_tabnew\6<\16prev_source\6R\frefresh\t<cr>\topen\n<esc>\vcancel\6p\25paste_from_clipboard\6A\18add_directory\6d\vdelete\6i\22show_file_details\6y\22copy_to_clipboard\6S\15open_split\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\fcurrent\nwidth\3(\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\19required_width\3n\fenabled\2\18last_modified\1\0\2\19required_width\3X\fenabled\2\ttype\1\0\2\19required_width\3z\fenabled\2\14file_size\1\0\2\19required_width\3@\fenabled\2\15git_status\fsymbols\1\0\0\1\0\t\frenamed\t󰁕\14untracked\b\rconflict\b\nadded\5\rmodified\5\vstaged\b\runstaged\t󰄱\fignored\b\fdeleted\b✖\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\17folder_empty\t󰜌\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\b\16folder_open\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\fpadding\3\1\16indent_size\3\2\23expander_collapsed\b\17with_markers\2\18indent_marker\b│\23last_indent_marker\b└\22expander_expanded\b\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\19event_handlers\1\0\6\23popup_border_style\frounded\22enable_git_status\2\26sort_case_insensitive\1\25close_if_last_window\1\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire\1\0\2\ttext\t󰌵\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/treatybreaker/neogit"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-highlight-colors"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-highlight-colors",
    url = "https://github.com/brenoprata10/nvim-highlight-colors"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-popcorn"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-popcorn",
    url = "https://github.com/javiorfo/nvim-popcorn"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-wildcat"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-wildcat",
    url = "https://github.com/javiorfo/nvim-wildcat"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\19autoselect_one\2\20include_current\1\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["web-tools.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/web-tools.nvim",
    url = "https://github.com/ray-x/web-tools.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/jonas/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\19autoselect_one\2\20include_current\1\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: monokai-pro.nvim
time([[Config for monokai-pro.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\1\1\0\0\0\1K\0\1\0�\5\1\0\5\0$\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\3=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\29\0005\4\28\0=\4\30\0035\4\31\0=\4 \3=\3!\0023\3\"\0=\3#\2B\0\2\1K\0\1\0\roverride\0\fplugins\21indent_blankline\1\0\2\22context_highlight\bpro\28context_start_underline\1\15bufferline\1\0\0\1\0\2\22underline_visible\1\23underline_selected\1\21background_clear\1\6\0\0\14float_win\15toggleterm\14telescope\14which-key\frenamer\14day_night\1\0\3\17night_filter\fclassic\15day_filter\fclassic\venable\1\vstyles\18tag_attribute\1\0\1\vitalic\2\15annotation\1\0\1\vitalic\2\14parameter\1\0\1\vitalic\2\14structure\1\0\1\vitalic\2\14functions\1\0\2\14undercurl\2\tbold\2\17storageclass\1\0\1\vitalic\2\ttype\1\0\1\vitalic\2\fkeyword\1\0\1\vitalic\2\fcomment\1\0\0\1\0\1\vitalic\2\1\0\5\20terminal_colors\2\27transparent_background\2\15inc_search\15background\rdevicons\2\vfilter\fclassic\nsetup\16monokai-pro\frequire\0", "config", "monokai-pro.nvim")
time([[Config for monokai-pro.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n1\0\1\4\0\3\0\0056\1\0\0009\1\1\1'\3\2\0B\1\2\1K\0\1\0\18Neotree close\bcmd\bvim� \1\0\b\0x\0�\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\17\0004\3\3\0005\4\14\0003\5\15\0=\5\16\4>\4\1\3=\3\18\0025\3\19\0=\3\20\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4!\0005\5 \0=\5\"\4=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\3=\3.\0024\3\0\0=\3/\0025\0030\0005\0041\0=\0042\0035\0044\0005\0053\0=\0055\0045\0056\0005\0067\0=\0068\5=\0059\0045\5:\0005\6;\0=\0068\5=\5<\4=\4=\3=\3>\0024\3\0\0=\3?\0025\3F\0005\4@\0004\5\0\0=\5A\0044\5\0\0=\5B\0044\5\0\0=\5C\0044\5\0\0=\5D\0044\5\0\0=\5E\4=\4G\0035\4H\0=\4I\0035\4\\\0005\5J\0005\6K\0005\aL\0=\a8\6=\6M\0055\6N\0=\6O\0055\6P\0=\6Q\0055\6R\0=\6S\0055\6T\0=\6U\0055\6V\0=\6W\0055\6X\0=\6Y\0055\6Z\0=\6[\5=\5=\0045\5]\0=\5^\4=\4>\0034\4\0\0=\4/\3=\3_\0025\3a\0005\4`\0=\4I\0035\4k\0005\5b\0005\6c\0005\ad\0=\a8\6=\6M\0055\6e\0=\6O\0055\6f\0=\6Q\0055\6g\0=\6U\0055\6h\0=\6W\0055\6i\0=\6Y\0055\6j\0=\6[\5=\5=\4=\4>\3=\3l\0025\3w\0005\4m\0005\5n\0005\6o\0005\ap\0=\a8\6=\6M\0055\6q\0=\6O\0055\6r\0=\6Q\0055\6s\0=\6U\0055\6t\0=\6W\0055\6u\0=\6Y\0055\6v\0=\6[\5=\5=\4=\4>\3=\3#\2B\0\2\1K\0\1\0\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\a\agg\24git_commit_and_push\aga\17git_add_file\6A\16git_add_all\agr\20git_revert_file\agc\15git_commit\agu\21git_unstage_file\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\2\18show_unloaded\2\21group_empty_dirs\2\1\0\2\20leave_dirs_open\1\fenabled\2\15filesystem\26fuzzy_finder_mappings\1\0\4\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\t<up>\19move_cursor_up\1\0\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\ntitle\rOrder by\15prefix_key\6o\1\2\1\0\14show_help\vnowait\1\1\0\n\6.\rset_root\6#\17fuzzy_sorter\6H\18toggle_hidden\6/\17fuzzy_finder\a]g\22next_git_modified\6D\27fuzzy_finder_directory\t<bs>\16navigate_up\a[g\22prev_git_modified\6f\21filter_on_submit\n<c-x>\17clear_filter\24follow_current_file\1\0\2\20leave_dirs_open\1\fenabled\1\19filtered_items\1\0\3\26hijack_netrw_behavior\17open_default\27use_libuv_file_watcher\1\21group_empty_dirs\2\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\16hide_hidden\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\24\6C\15close_node\6r\vrename\6l\18focus_preview\18<2-LeftMouse>\topen\6q\17close_window\6x\21cut_to_clipboard\6w\28open_with_window_picker\6c\tcopy\6>\16next_source\6?\14show_help\6m\tmove\6s\16open_vsplit\6t\16open_tabnew\6<\16prev_source\6R\frefresh\t<cr>\topen\n<esc>\vcancel\6p\25paste_from_clipboard\6A\18add_directory\6d\vdelete\6i\22show_file_details\6y\22copy_to_clipboard\6S\15open_split\6z\20close_all_nodes\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\fcurrent\nwidth\3(\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\19required_width\3n\fenabled\2\18last_modified\1\0\2\19required_width\3X\fenabled\2\ttype\1\0\2\19required_width\3z\fenabled\2\14file_size\1\0\2\19required_width\3@\fenabled\2\15git_status\fsymbols\1\0\0\1\0\t\frenamed\t󰁕\14untracked\b\rconflict\b\nadded\5\rmodified\5\vstaged\b\runstaged\t󰄱\fignored\b\fdeleted\b✖\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\17folder_empty\t󰜌\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\b\16folder_open\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\fpadding\3\1\16indent_size\3\2\23expander_collapsed\b\17with_markers\2\18indent_marker\b│\23last_indent_marker\b└\22expander_expanded\b\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\19event_handlers\1\0\6\23popup_border_style\frounded\22enable_git_status\2\26sort_case_insensitive\1\25close_if_last_window\1\"enable_normal_mode_for_inputs\1\23enable_diagnostics\2\fhandler\0\1\0\1\nevent\16file_opened\nsetup\rneo-tree\frequire\1\0\2\ttext\t󰌵\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
