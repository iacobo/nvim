-- [[LSP]]
vim.pack.add {
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
}

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

-- vim: ts=2 sts=2 sw=2 et
