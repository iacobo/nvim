local km = vim.keymap.set

-- [[ Basic Keymaps ]]
km('n', '<Esc>', '<cmd>nohlsearch<CR>')
km('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
km('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybindings for Barbar.nvim
km('n', '<F4>', ':BufferClose<CR>', { noremap = true, silent = true })
km('n', '<Tab>', ':BufferNext<CR>', { noremap = true, silent = true })
km('n', '<S-Tab>', ':BufferPrevious<CR>', { noremap = true, silent = true })

-- Conform (Autoformat)
km('i', '<leader>f', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = '[F]ormat buffer' })

-- [[ Snacks ]]
-- Top Pickers & Explorer
km('n', '<leader><space>', Snacks.picker.smart, { desc = 'Smart Find Files' })
km('n', '<leader>,', Snacks.picker.buffers, { desc = 'Buffers' })
km('n', '<leader>/', Snacks.picker.grep, { desc = 'Grep' })
km('n', '<leader>:', Snacks.picker.command_history, { desc = 'Command History' })
km('n', '<leader>n', Snacks.picker.notifications, { desc = 'Notification History' })
km('n', '<leader>e', function()
  Snacks.explorer()
end, { desc = 'File Explorer' })
km('n', '\\', function()
  Snacks.explorer()
end, { desc = 'File Explorer' })

-- find
km('n', '<leader>fb', Snacks.picker.buffers, { desc = 'Buffers' })
km('n', '<leader>fc', function()
  Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Find Config File' })
km('n', '<leader>ff', Snacks.picker.files, { desc = 'Find Files' })
km('n', '<leader>fg', Snacks.picker.git_files, { desc = 'Find Git Files' })
km('n', '<leader>fp', Snacks.picker.projects, { desc = 'Projects' })
km('n', '<leader>fr', Snacks.picker.recent, { desc = 'Recent' })

-- git
km('n', '<leader>gb', Snacks.picker.git_branches, { desc = 'Git Branches' })
km('n', '<leader>gl', Snacks.picker.git_log, { desc = 'Git Log' })
km('n', '<leader>gL', Snacks.picker.git_log_line, { desc = 'Git Log Line' })
km('n', '<leader>gs', Snacks.picker.git_status, { desc = 'Git Status' })
km('n', '<leader>gS', Snacks.picker.git_stash, { desc = 'Git Stash' })
km('n', '<leader>gd', Snacks.picker.git_diff, { desc = 'Git Diff (Hunks)' })
km('n', '<leader>gf', Snacks.picker.git_log_file, { desc = 'Git Log File' })

-- Grep
km('n', '<leader>sb', Snacks.picker.lines, { desc = 'Buffer Lines' })
km('n', '<leader>sB', Snacks.picker.grep_buffers, { desc = 'Grep Open Buffers' })
km('n', '<leader>sg', Snacks.picker.grep, { desc = 'Grep' })
km('n', '<leader>sw', Snacks.picker.grep_word, { desc = 'Visual selection or word' })

-- search
km('n', '<leader>s"', Snacks.picker.registers, { desc = 'Registers' })
km('n', '<leader>s/', Snacks.picker.search_history, { desc = 'Search History' })
km('n', '<leader>sa', Snacks.picker.autocmds, { desc = 'Autocmds' })
km('n', '<leader>sb', Snacks.picker.lines, { desc = 'Buffer Lines' })
km('n', '<leader>sc', Snacks.picker.command_history, { desc = 'Command History' })
km('n', '<leader>sC', Snacks.picker.commands, { desc = 'Commands' })
km('n', '<leader>sd', Snacks.picker.diagnostics, { desc = 'Diagnostics' })
km('n', '<leader>sD', Snacks.picker.diagnostics_buffer, { desc = 'Buffer Diagnostics' })
km('n', '<leader>sh', Snacks.picker.help, { desc = 'Help Pages' })
km('n', '<leader>sH', Snacks.picker.highlights, { desc = 'Highlights' })
km('n', '<leader>si', Snacks.picker.icons, { desc = 'Icons' })
km('n', '<leader>sj', Snacks.picker.jumps, { desc = 'Jumps' })
km('n', '<leader>sk', Snacks.picker.keymaps, { desc = 'Keymaps' })
km('n', '<leader>sl', Snacks.picker.loclist, { desc = 'Location List' })
km('n', '<leader>sm', Snacks.picker.marks, { desc = 'Marks' })
km('n', '<leader>sM', Snacks.picker.man, { desc = 'Man Pages' })
km('n', '<leader>sp', Snacks.picker.lazy, { desc = 'Search for Plugin Spec' })
km('n', '<leader>sq', Snacks.picker.qflist, { desc = 'Quickfix List' })
km('n', '<leader>sR', Snacks.picker.resume, { desc = 'Resume' })
km('n', '<leader>su', Snacks.picker.undo, { desc = 'Undo History' })
km('n', '<leader>uC', Snacks.picker.colorschemes, { desc = 'Colorschemes' })

-- LSP
km('n', 'gd', Snacks.picker.lsp_definitions, { desc = 'Goto Definition' })
km('n', 'gD', Snacks.picker.lsp_declarations, { desc = 'Goto Declaration' })
km('n', 'gr', Snacks.picker.lsp_references, { nowait = true, desc = 'References' })
km('n', 'gI', Snacks.picker.lsp_implementations, { desc = 'Goto Implementation' })
km('n', 'gy', Snacks.picker.lsp_type_definitions, { desc = 'Goto T[y]pe Definition' })
km('n', '<leader>ss', Snacks.picker.lsp_symbols, { desc = 'LSP Symbols' })
km('n', '<leader>sS', Snacks.picker.lsp_workspace_symbols, { desc = 'LSP Workspace Symbols' })

-- Other
km('n', '<leader>z', function()
  Snacks.zen()
end, { desc = 'Toggle Zen Mode' })
km('n', '<leader>Z', Snacks.zen.zoom, { desc = 'Toggle Zoom' })
km('n', '<leader>.', function()
  Snacks.scratch()
end, { desc = 'Toggle Scratch Buffer' })
km('n', '<leader>S', Snacks.scratch.select, { desc = 'Select Scratch Buffer' })
km('n', '<leader>n', Snacks.notifier.show_history, { desc = 'Notification History' })
km('n', '<leader>bd', function()
  Snacks.bufdelete()
end, { desc = 'Delete Buffer' })
km('n', '<leader>cR', Snacks.rename.rename_file, { desc = 'Rename File' })
km('n', '<leader>gB', function()
  Snacks.gitbrowse()
end, { desc = 'Git Browse' })
km('n', '<leader>gg', function()
  Snacks.lazygit()
end, { desc = 'Lazygit' })
km('n', '<leader>un', Snacks.notifier.hide, { desc = 'Dismiss All Notifications' })
km('n', '<c-/>', function()
  Snacks.terminal()
end, { desc = 'Toggle Terminal' })
km('n', '<c-_>', function()
  Snacks.terminal()
end, { desc = 'which_key_ignore' })
km('n', ']]', function()
  Snacks.words.jump(vim.v.count1)
end, { desc = 'Next Reference' })
km('n', '[[', function()
  Snacks.words.jump(-vim.v.count1)
end, { desc = 'Prev Reference' })

-- vim: ts=2 sts=2 sw=2 et
