vim.pack.add {
  'https://github.com/nvim-lualine/lualine.nvim',
  -- Dependencies
  'https://github.com/nvim-tree/nvim-web-devicons',
}

require('lualine').setup {
  sections = {
    lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '' } }, 'filetype' },
  }, --e8cc
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
}

-- vim: ts=2 sts=2 sw=2 et
