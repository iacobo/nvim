-- debug.lua

vim.pack.add {
  'https://github.com/mfussenegger/nvim-dap',

  -- dependencies
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/jay-babu/mason-nvim-dap.nvim',
  'https://github.com/mfussenegger/nvim-dap-python',
}

keys = {
  -- Basic debugging keymaps, feel free to change to your liking!
  {
    '<F5>',
    function()
      require('dap').continue()
    end,
    desc = 'Debug: Start/Continue',
  },
  {
    '<F1>',
    function()
      require('dap').step_into()
    end,
    desc = 'Debug: Step Into',
  },
  {
    '<F2>',
    function()
      require('dap').step_over()
    end,
    desc = 'Debug: Step Over',
  },
  {
    '<F3>',
    function()
      require('dap').step_out()
    end,
    desc = 'Debug: Step Out',
  },
  {
    '<leader>b',
    function()
      require('dap').toggle_breakpoint()
    end,
    desc = 'Debug: Toggle Breakpoint',
  },
  {
    '<leader>B',
    function()
      require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    end,
    desc = 'Debug: Set Breakpoint',
  },
  -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
  {
    '<F7>',
    function()
      require('dapui').toggle()
    end,
    desc = 'Debug: See last session result.',
  },
}

local dap = require 'dap'
local dapui = require 'dapui'
-- uses the debugypy installation by mason
local debugpyPythonPath = require('mason-registry').get_package('debugpy'):get_install_path() .. '/venv/bin/python3'

require('mason-nvim-dap').setup {
  -- Makes a best effort to setup the various debuggers with
  -- reasonable debug configurations
  automatic_installation = true,

  -- You can provide additional configuration to the handlers,
  -- see mason-nvim-dap README for more information
  handlers = {},

  -- You'll need to check that you have the required things installed
  -- online, please don't ask me how to install them :)
  ensure_installed = {
    -- Update this to ensure that you have the debuggers for the langs you want
    'delve',
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
