-- [[ Configure plugins ]]

-- Theme
vim.opt.background = 'dark'
vim.cmd.colorscheme 'tokyonight-night'

-- Barbar
require('barbar').setup { animation = false }

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
  ensure_installed = { 'bash', 'zsh', 'fish', 'diff', 'html', 'latex', 'lua', 'markdown', 'markdown_inline', 'python', 'toml', 'typst', 'yaml' },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
}

-- Markview
require('markview').setup { preview = { icon_provider = 'devicons' } }

-- Conform (Autoformat)
require('conform').setup {
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  notify_on_error = false,
  format_on_save = {
    timeout_ms = 500,
    lsp_format = 'fallback',
  },
  formatters_by_ft = {
    html = { 'prettierd' },
    lua = { 'stylua' },
    markdown = { 'markdownlint' },
    python = { 'ruff' },
    toml = { 'taplo' },
    typst = { 'prettypst' }, -- also: typstyle, prettypst
    yaml = { 'prettierd' },
  },
}

-- vim: ts=2 sts=2 sw=2 et
