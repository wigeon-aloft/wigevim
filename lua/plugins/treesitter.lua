return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    lazy = false,
    build = ':TSUpdate',
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        fold = { enable = true },
    },
    config = function(_, opts)
        local treesitter = require("nvim-treesitter")
        treesitter.setup(opts)
        require("nvim-treesitter-textobjects").setup({
            select = {
                    lookahead = true,
            },
        })
        treesitter.install({ "vim", "vimdoc", "go", "lua", "c" })
    end,
}
