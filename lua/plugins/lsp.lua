-----------------
-- [[LSP]]
-----------------

require('mason').setup()
require('mason-tool-installer').setup {
  ensure_installed = {
    -- LSPs
    'lua-language-server',
    'basedpyright',
    -- Linters
    'markdownlint',
    -- Formatters
    'prettierd',
    'prettypst',
    'ruff',
    'stylua',
    'taplo',
    -- Misc
    'mmdc',
    'tectonic',
    'uv',
  },
}

-- Start and connect to the LSP servers
vim.lsp.enable 'lua_ls'
vim.lsp.enable 'basedpyright'

-------------------
-- [[ Autoformat ]]
-------------------

-- Conform
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
    python = {
      'ruff_fix', -- To fix auto-fixable lint errors.
      'ruff_format',
      'ruff_organize_imports',
    },
    toml = { 'taplo' },
    typst = { 'prettypst' }, -- also: typstyle, prettypst
    yaml = { 'prettierd' },
  },
}

-----------------
-- [[ Debugger ]]
-----------------

require('dap-python').setup 'uv'

-----------------
-- [[ Testing ]]
-----------------

require('neotest').setup {
  adapters = {
    require 'neotest-python' {
      runner = 'unittest',
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
