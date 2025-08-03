return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        'tokyonight-night',
        'moonfly',
        'carbonfox',
        'oxocarbon',
        'modus',
        'paramount',
      },
      livePreview = true, -- Apply theme while picking. Default to true.
    }
  end,
}
