-- [[ Configure plugins ]]

-- Theme
vim.opt.background = 'dark'
vim.cmd.colorscheme 'tokyonight-night'

-- Snacks
require('snacks').setup {
  bigfile = { enabled = true },
  dashboard = {
    enabled = true,
    sections = {
      { section = 'header' },
      {
        section = 'terminal',
        cmd = 'chafa (random choice ~/Downloads/pics/lain/*) --format symbols --symbols vhalf',
        height = 23,
      },
    },
    preset = {
      header = [[
░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░]],
    },
  },
  explorer = { enabled = true },
  image = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  lazygit = { enabled = true },
  notifier = { enabled = true },
  picker = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
}

-- Blink.cmp
require('blink.cmp').setup()

-- Noice
require('noice').setup {
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
      ['vim.lsp.util.stylize_markdown'] = true,
      ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration

  bottom_search = true, -- use a classic bottom cmdline for search
  command_palette = true, -- position the cmdline and popupmenu together
  long_message_to_split = true, -- long messages will be sent to a split
  inc_rename = false, -- enables an input dialog for inc-rename.nvim
  lsp_doc_border = false, -- add a border to hover docs and signature help
}

-- Barbar
require('barbar').setup {
  animation = false,
  auto_hide = 1,
}

-- Lualine
require('lualine').setup {
  sections = { lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '' } }, 'filetype' } }, --e8cc
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
}

-- Treesitter
require('nvim-treesitter').setup {
  build = ':TSUpdate',
}

require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'c',
    'css',
    'diff',
    'fish',
    'html',
    'javascript',
    'latex',
    'lua',
    'luadoc',
    'markdown',
    'markdown_inline',
    'norg',
    'python',
    'query',
    'regex',
    'rst',
    'scss',
    'svelte',
    'toml',
    'tsx',
    'typst',
    'vim',
    'vimdoc',
    'vue',
    'yaml',
    --'zsh',
  },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
}

-- Markview
require('markview').setup { preview = { icon_provider = 'devicons' } }

-- Conform (Autoformat)
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
    python = { 'ruff' },
    toml = { 'taplo' },
    typst = { 'prettypst' }, -- also: typstyle, prettypst
    yaml = { 'prettierd' },
  },
}

-- vim: ts=2 sts=2 sw=2 et
