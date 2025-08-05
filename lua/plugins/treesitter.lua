-- Highlight, edit, and navigate code
vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter' }

require('nvim-treesitter').setup {
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'css',
      'diff',
      'html',
      'latex',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'python',
      'query',
      'rst',
      'toml',
      'typst',
      'vim',
      'vimdoc',
      'yaml',
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

-- vim: ts=2 sts=2 sw=2 et
