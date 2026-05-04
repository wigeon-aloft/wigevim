return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = 'auto',
            icons_enabled = true,
            component_separators = "",
            section_separators = "",
        },
        sections = {
            lualine_a = {{ 'mode', fmt = function(str) return str:sub(1,3) end }},
            lualine_b = {'filename'},
            lualine_c = {},
            lualine_x = {'diagnostics'},
            lualine_y = {'branch'},
            lualine_z = {'location'},
        },
    }
}

