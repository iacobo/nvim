return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        'tokyonight-night',
        --'tokyo-night-dark',
        'nekonight-fire-obsidian',
        'carbonfox',
      },
      livePreview = true, -- Apply theme while picking. Default to true.
    }
  end,
}
