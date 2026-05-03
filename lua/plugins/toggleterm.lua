return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        local tt = require("toggleterm")
        vim.keymap.set('n', '<leader>t', tt.toggle, { desc = 'terminal [t]oggle' })
        vim.keymap.set('t', '<ESC><ESC>', tt.toggle, { desc = 'terminal [t]oggle' })

        tt.setup{
            direction = 'float',
            start_in_insert = true,
            float_opts = {
                height = 30,
                title_pos = 'center',
            },
        }

    end,
}
