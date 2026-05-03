-- Enable treesitter for specific filetypes
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'go', 'lua' },
    callback = function()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        vim.treesitter.start()
    end,
})
