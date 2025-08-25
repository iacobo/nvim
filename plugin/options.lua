-- Misc
vim.o.shell = 'fish' -- <O)))><3
vim.o.splitright = true -- Configure how new splits should be opened
vim.o.splitbelow = true

-- UI
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.showmode = false -- Redundant, already in status line
vim.o.cursorline = true
vim.o.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor.
vim.o.list = true -- Whitespace chars
vim.o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- UX
vim.o.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!
vim.o.confirm = true -- Confirm quit without saving open buffers
vim.o.undofile = true -- Save undo history
vim.o.inccommand = 'split' -- Preview substitutions live, as you type!
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.smartcase = true
vim.o.autoindent = true
vim.o.breakindent = true
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end) -- Sync clipboard between OS and Neovim.

-- Folding

-- Disabling :checkhealth lang warnings
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- vim: ts=2 sts=2 sw=2 et
