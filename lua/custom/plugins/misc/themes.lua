-- ~/.config/nvim/lua/kickstart/plugins/themes.lua

local function setup_theme(theme_name, repo, colorscheme_name, requires_setup)
  return {
    repo,
    priority = 1000,
    config = function()
      if requires_setup then
        require(theme_name).setup {
          styles = {
            comments = { italic = false },
          },
          transparent = true,
        }
      end
      vim.opt.background = 'dark'
      vim.cmd.colorscheme(colorscheme_name)
    end,
  }
end

return {
  setup_theme('nightfox', 'EdenEast/nightfox.nvim', 'carbonfox', false),
  setup_theme('tokyonight', 'folke/tokyonight.nvim', 'tokyonight-night', true),
  --setup_theme('base16-nvim', 'wincent/base16-nvim', 'tokyo-night-dark', false),
  setup_theme('nekonight', 'neko-night/nvim', 'nekonight-fire-obsidian', false),
}
