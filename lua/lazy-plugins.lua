-- [[ Configure and install plugins ]]
vim.pack.add {
  'chrisgrieser/nvim-puppeteer',
  'folke/todo-comments.nvim',
  'folke/which-key.nvim',
  'lewis6991/gitsigns.nvim',
  'lukas-reineke/indent-blankline.nvim',
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
  'nvzone/typr',
  --'OXY2DEV/markview.nvim',
  'romgrk/barbar.nvim',
  'saghen/blink.cmp',
  'windwp/nvim-autopairs',
  { import = 'plugins' },
}

-- vim: ts=2 sts=2 sw=2 et
