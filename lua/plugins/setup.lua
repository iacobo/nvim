-- [[ Configure plugins ]]

-- Theme
vim.opt.background = 'dark'
vim.cmd.colorscheme 'tokyonight-night'

-- Snacks Finder
require('snacks').setup()

-- Barbar
require('barbar').setup { opts = { animation = false } }

-- Lualine
require('lualine').setup {
  sections = { lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '' } }, 'filetype' } }, --e8cc
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
}

-- Treesitter
require('nvim-treesitter').setup {
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'diff', 'html', 'latex', 'lua', 'markdown', 'markdown_inline', 'python', 'toml', 'typst', 'yaml' },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

-- Markview
require('markview').setup { preview = { icon_provider = 'devicons' } }

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
