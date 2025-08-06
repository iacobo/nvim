-- [[ Configure and install plugins ]]
require 'plugins.theme' -- Load theme first

vim.pack.add {
  -- Dependencies
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvzone/volt', -- Dep for Typr

  -- UI
  'https://github.com/romgrk/barbar.nvim', --animation = false
  'https://github.com/folke/todo-comments.nvim', -- Pretty TODO FIX WARN etc comments
  'https://github.com/lewis6991/gitsigns.nvim',

  -- Helper funcs: typing
  'https://github.com/folke/which-key.nvim', -- Shortcut glossary popup
  'https://github.com/saghen/blink.cmp', -- Autocomplete
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/chrisgrieser/nvim-puppeteer', -- Auto f-strings when typing {}
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/NMAC427/guess-indent.nvim',

  -- Fun
  'https://github.com/nvzone/typr', -- Typing test
}

require 'plugins.conform' -- Autoformat on save
require 'plugins.snacks'
--require 'plugins.debug'
require 'plugins.lint' -- Autolint on save
require 'plugins.lsp' -- LSP config python, lua
require 'plugins.lualine' -- Statusline
require 'plugins.treesitter' -- Code parse trees for highlights and everything else

-- vim: ts=2 sts=2 sw=2 et
