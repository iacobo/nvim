return {
  {
    'EdenEast/nightfox.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('nightfox').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }
      vim.opt.background = "dark" -- set this to dark or light
      vim.cmd("colorscheme carbonfox")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
