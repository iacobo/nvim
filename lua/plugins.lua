-- [[ Install plugins ]]
vim.pack.add {
  -- Dependencies
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/echasnovski/mini.icons',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/rcarriga/nvim-notify',
  'https://github.com/nvzone/volt',
  'https://github.com/rafamadriz/friendly-snippets',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/antoinemadec/FixCursorHold.nvim',

  -- UI
  'https://github.com/folke/tokyonight.nvim',
  'https://github.com/romgrk/barbar.nvim',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/folke/noice.nvim',
  --'https://github.com/folke/persistence.nvim',

  -- Finder, dir tree, grep etc
  'https://github.com/folke/snacks.nvim',
  'https://github.com/folke/which-key.nvim',

  -- Linting etc
  'https://github.com/mfussenegger/nvim-lint',
  'https://github.com/stevearc/conform.nvim',

  -- Tool installers (must install after lint, in this order)
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer',

  -- Config files for LSPs
  'https://github.com/neovim/nvim-lspconfig',

  -- Testing
  'https://github.com/nvim-neotest/neotest',
  'https://github.com/nvim-neotest/neotest-python',

  -- Rendering
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-treesitter/nvim-treesitter-context', -- Sticky headers
  'https://github.com/OXY2DEV/markview.nvim',
  'https://github.com/folke/todo-comments.nvim',

  -- Typing aids
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range '1.0' }, -- Force it to dl prebuilt, stop errors building
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/chrisgrieser/nvim-puppeteer',
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/NMAC427/guess-indent.nvim',

  -- Fun
  'https://github.com/nvzone/typr', -- Typing test
}

-- Setups
require 'plugins.setup'
require 'plugins.lsp'

-- vim: ts=2 sts=2 sw=2 et
