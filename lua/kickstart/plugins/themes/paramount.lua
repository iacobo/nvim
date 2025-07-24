return {
  {
    'owickstrom/vim-colors-paramount',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.opt.background = "dark" -- set this to dark or light
      vim.cmd("colorscheme paramount")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
