return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        -- Custom Unix symbol
        config = function()
            require('lualine').setup {
                sections = { lualine_x = { 'encoding', { 'fileformat',
                    symbols = { unix = '', }, --e8cc
                }, 'filetype', }, }, }
        end,
    },
}
