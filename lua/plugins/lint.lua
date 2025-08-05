-- [[Lint]]
vim.pack.add {
  'https://github.com/mfussenegger/nvim-lint',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer',
}

require('mason').setup()
require('mason-tool-installer').setup {
  ensure_installed = {
    'markdownlint',
    'ruff',
    'stylua',
    'uv',
  },
}

-- Linting setup
local lint = require 'lint'

-- Define linters for different file types
lint.linters_by_ft = {
  markdown = { 'markdownlint' },
  python = { 'ruff' },
  lua = { 'stylua' },
}

-- Create autocommand for linting
local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    if vim.bo.modifiable then
      lint.try_lint()
    end
  end,
})

-- vim: ts=2 sts=2 sw=2 et
