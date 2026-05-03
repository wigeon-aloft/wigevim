return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {
        defaults = {
            layout_strategy = "vertical",

            mappings = {
                i = {
                    ["<C-s>"] = "cycle_previewers_next",
                    ["<C-a>"] = "cycle_previewers_prev",
                    ["<C-h>"] = "which_key",
                    ["<ESC>"] = "close",
                },
            },
            vimgrep_arguments = {
                "rg",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                -- allow searching in hidden files (except for .git)
                "--hidden", "--glob", "!**/.git/*",
            },
        },
        pickers = {
            find_files = {
                find_command = {
                    "fd",
                    -- allow searching for hidden files (except for .git)
                    "--hidden", "-E", ".git"
                },
            },
        }
    }
}
