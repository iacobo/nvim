-- PYTHON REPL
-- A basic REPL that opens up as a horizontal split
-- * `+` serves as the "send to REPL" operator. That means we can use `++`
-- to send the current line to the REPL, and `+j` to send the current and the
-- following line to the REPL, like we would do with other vim operators.
vim.pack.add { 'https://github.com/Vigemus/iron.nvim' }

require('iron').setup {
  keys = {
    { '<leader>i', vim.cmd.IronRepl, desc = '󱠤 Toggle REPL' },
    { '<leader>I', vim.cmd.IronRestart, desc = '󱠤 Restart REPL' },

    -- these keymaps need no right-hand-side, since that is defined by the
    -- plugin config further below
    { '+', mode = { 'n', 'x' }, desc = '󱠤 Send-to-REPL Operator' },
    { '++', desc = '󱠤 Send Line to REPL' },
  },

  main = 'iron.core',

  opts = {
    keymaps = {
      send_line = '++',
      visual_send = '+',
      send_motion = '+',
    },
    config = {
      repl_open_cmd = 'horizontal bot 10 split',
      repl_definition = {
        python = {
          command = function()
            local ipythonAvailable = vim.fn.executable 'ipython' == 1
            local binary = ipythonAvailable and 'ipython' or 'python3'
            return { binary }
          end,
        },
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
