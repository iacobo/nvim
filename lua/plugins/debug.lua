-- debug.lua

vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/mfussenegger/nvim-dap-python',
  'https://github.com/nvim-neotest/nvim-nio',
  --https://github.com/nvim-neotest/neotest-python

  -- dependencies
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/jay-babu/mason-nvim-dap.nvim',
}

local dap = require 'dap'
local dapui = require 'dapui'
-- uses the debugypy installation by mason
local debugpyPythonPath = require('mason-registry').get_package('debugpy'):get_install_path() .. '/venv/bin/python3'

require('mason-nvim-dap').setup {
  automatic_installation = true,
  handlers = {},
  ensure_installed = {
    'debugpy',
  },
}

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close

-- Install python specific config
-- fix: E5108: Error executing lua .../Local/nvim-data/lazy/nvim-dap-ui/lua/dapui/controls.lua:14: attempt to index local 'element' (a nil value)
-- see: https://github.com/rcarriga/nvim-dap-ui/issues/279#issuecomment-1596258077
require('dap-python').setup(debugpyPythonPath, {}) ---@diagnostic disable-line: missing-fields

-- vim: ts=2 sts=2 sw=2 et
