-- [[LSP]]
require('mason').setup()
require('mason-tool-installer').setup {
  ensure_installed = {
    -- LSPs
    'lua-language-server',
    'basedpyright',
    -- Formatters
    'prettierd',
    'ruff',
    'stylua',
    'taplo',
    -- Renderers
    'mmdc',
    'tectonic',
    -- Venv
    'uv',
  },
  auto_update = true,
}

vim.lsp.enable { 'lua_ls', 'basedpyright' }

-- [[ Autoformat ]]
require('conform').setup {
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  notify_on_error = false,
  format_on_save = { timeout_ms = 500, lsp_format = 'fallback' },
  formatters_by_ft = {
    html = { 'prettierd' },
    lua = { 'stylua' },
    markdown = { 'prettierd' },
    python = { 'ruff_fix', 'ruff_format', 'ruff_organize_imports' },
    toml = { 'taplo' },
    yaml = { 'prettierd' },
  },
}

-- [[ Debug, Test ]]
require('dap-python').setup 'uv'
require('neotest').setup { adapters = { require 'neotest-python' } } -- https://github.com/nvim-neotest/neotest-python/issues/69

-- vim: ts=2 sts=2 sw=2 et
