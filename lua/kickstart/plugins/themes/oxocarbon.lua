return {
    {
        'nyoom-engineering/oxocarbon.nvim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        config = function()
            ---@diagnostic disable-next-line: missing-fields

            vim.opt.background = 'dark' -- set this to dark or light
            vim.cmd('colorscheme oxocarbon')

            -- Transparency
            --vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
            --vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
            --vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
        end,
    },
}
-- vim: ts=2 sts=2 sw=2 et
