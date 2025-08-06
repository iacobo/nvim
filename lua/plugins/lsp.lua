-----------------
-- [[LSP]]
-----------------

-- Ensure you have the required language servers installed
require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'pyright',
    'lua_ls',
  },
}

-- LSP configuration for Python
vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'requirements.txt' },
})

-- LSP configuration for Lua
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
})

-- Enable the LSP servers
vim.lsp.enable 'pyright'
vim.lsp.enable 'lua_ls'

-----------------
-- [[Linter]]
-----------------

require('mason-tool-installer').setup {
  ensure_installed = {
    'markdownlint',
    'ruff',
    'stylua',
    'uv',
  },
}

local lint = require 'lint'

lint.linters_by_ft = {
  markdown = { 'markdownlint' },
  python = { 'ruff' },
  lua = { 'stylua' },
}

local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    if vim.bo.modifiable then
      lint.try_lint()
    end
  end,
})

-----------------
-- [[ Debugger ]]
-----------------

-- vim: ts=2 sts=2 sw=2 et
