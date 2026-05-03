return {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip'
    },
    config = function()
        local cmp = require 'cmp'
        cmp.setup({
            snippet = {
              expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
              end,
            },
            mapping = cmp.mapping.preset.insert({
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<C-y>'] = cmp.mapping.confirm({ select = true }),
              ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "async_path"},
            },
        })
    end,
}
