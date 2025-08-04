return {
  'iacobo/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.opt.background = 'dark'
    vim.cmd.colorscheme 'tokyonight-midnight'
  end,
}
