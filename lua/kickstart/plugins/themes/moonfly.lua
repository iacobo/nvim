return {
  {
    'bluz71/vim-moonfly-colors',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.opt.background = "dark" -- set this to dark or light
      vim.cmd("colorscheme moonfly")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
