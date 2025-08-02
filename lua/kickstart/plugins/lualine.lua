return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        -- Custom Unix symbol
        config = function()
            require('lualine').setup {
                sections = {
                    lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '', }, }, 'filetype', }, }, --e8cc
                options = {
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' }
                }
            }
        end,
    },
}
