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
                }
            end
            vim.opt.background = 'dark'
            vim.cmd.colorscheme(colorscheme_name)
        end,
    }
end

return {
    setup_theme('modus-themes', 'miikanissi/modus-themes.nvim', 'modus', true),
    setup_theme('moonfly', 'bluz71/vim-moonfly-colors', 'moonfly', false),            -- No setup required
    setup_theme('nightfox', 'EdenEast/nightfox.nvim', 'carbonfox', true),
    setup_theme('oxocarbon', 'nyoom-engineering/oxocarbon.nvim', 'oxocarbon', false), -- No setup required
    setup_theme('paramount', 'owickstrom/vim-colors-paramount', 'paramount', false),  -- No setup required
    setup_theme('poimandres', 'olivercederborg/poimandres.nvim', 'poimandres', true),
    setup_theme('techbase', 'mcauley-penney/techbase.nvim', 'techbase', false),       -- No setup required
    setup_theme('tokyonight', 'folke/tokyonight.nvim', 'tokyonight-night', true),
}
