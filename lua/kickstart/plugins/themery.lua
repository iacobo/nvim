return {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
        require('themery').setup({
            themes = {
                -- normal
                'tokyonight-night', 'moonfly',                  --'catppuccin-mocha', 'nightfly', 'cyberdream', 'codedark', 'mofiqul/dracula', 'night-owl', 'adwaita',
                -- Purpz blue green
                'carbonfox', 'oxocarbon', 'modus', 'paramount', --'edge', 'dogrun', 'oxocarbon-lua', 'eidolon', 'mirodark',
                -- Blues
                'poimandres',                                   --'iceberg', 'nord' 'hatsunemiku', 'archery', 'hydrangea',
                -- Purples
                --'lavender-contrast', 'rose-pine', 'photon',
                -- monochrome
                -- Solarpunk
                --'solarized', 'spaceduck', 'peacocks-in-space', 'lucius', 'citruszest', 'rasmus', 'wkvoli', 'strange',
                -- Misc
                --'mellow', 'boo', 'substrata', 'neomodern', 'lucid', 'immortal', 'horizon', 'substrata', 'landscape', 'spacemacs-theme', 'noctis', 'eva-01', 'monet', 'orbital', 'vice', 'github-colors', '1989'
            },
            livePreview = true, -- Apply theme while picking. Default to true.
        })
    end
}
