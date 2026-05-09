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
            lualine_b = {'buffers'},
            lualine_c = {},
            lualine_x = {'diagnostics'},
            lualine_y = {'branch', 'diff'},
            lualine_z = {{'location', padding = 0}},
        },
    }
}

