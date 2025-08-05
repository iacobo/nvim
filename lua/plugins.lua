-- [[ Configure and install plugins ]]
--require 'plugins.theme' -- Load theme first
require 'plugins.conform' -- Autoformat on save
--require 'plugins.debug'
require 'plugins.iron' -- REPL (unnecessary with debugpy...?)
require 'plugins.lint' -- Autolint on save
require 'plugins.lsp' -- LSP config python, lua
require 'plugins.lualine' -- Statusline
require 'plugins.neo-tree' -- Dir
require 'plugins.telescope' -- FZF
require 'plugins.treesitter' -- Code parse trees for highlights and everything else

vim.pack.add {
  'https://github.com/chrisgrieser/nvim-puppeteer', -- Auto f-strings when typing {}
  'https://github.com/folke/todo-comments.nvim', -- Pretty TODO FIX WARN etc comments
  'https://github.com/folke/which-key.nvim', -- Shortcut glossary popup
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/NMAC427/guess-indent.nvim',
  'https://github.com/nvzone/volt', -- Dep for Typr
  'https://github.com/nvzone/typr', -- Typing test
  'https://github.com/romgrk/barbar.nvim', --animation = false
  'https://github.com/saghen/blink.cmp',
  'https://github.com/windwp/nvim-autopairs',
}

-- vim: ts=2 sts=2 sw=2 et
