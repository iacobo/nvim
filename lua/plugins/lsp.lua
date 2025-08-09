-----------------
-- [[LSP]]
-----------------

-- Ensure you have the required language servers installed
require('mason').setup()
require('mason-tool-installer').setup {
  ensure_installed = {
    -- LSPs
    'lua-language-server',
    'pyright',
    -- Linters
    'markdownlint',
    'ruff',
    'selene',
    -- Formatters
    'prettierd',
    'prettypst',
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
vim.lsp.enable 'pyright'

--vim.lsp.config 'lua_ls'
--vim.lsp.config 'pyright'

-----------------
-- [[Linter]]
-----------------

local lint = require 'lint'

lint.linters_by_ft = {
  markdown = { 'markdownlint' },
  python = { 'ruff' },
  lua = { 'selene' },
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
