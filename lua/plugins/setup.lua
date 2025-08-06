-- [[ Configure plugins ]]

-- Theme
vim.opt.background = 'dark'
vim.cmd.colorscheme 'tokyonight-night'

-- Snacks Finder
--require('snacks').setup()

-- Lualine
require('lualine').setup {
  sections = {
    lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '' } }, 'filetype' },
  }, --e8cc
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
}

-- Barbar
require('barbar').setup { opts = { animation = false } }

-- Treesitter
require('nvim-treesitter').setup {
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = { 'diff', 'html', 'lua', 'markdown', 'markdown_inline', 'python', 'toml', 'yaml' },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

-- Conform (Autoformat)
require('conform').setup {
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'ruff' },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
