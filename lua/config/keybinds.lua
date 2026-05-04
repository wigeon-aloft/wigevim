-- general search bindings using telescope '<leader>f'
vim.keymap.set('n', '<leader>ff', "<CMD>Telescope find_files<CR>", { desc = 'telescope [f]iles' })
vim.keymap.set('n', '<leader>fb', "<CMD>Telescope buffers<CR>", { desc = 'telescope [b]uffers'})
vim.keymap.set('n', '<leader>fd', "<CMD>Telescope diagnostics<CR>", { desc = 'telescope [d]iagnostics'})
vim.keymap.set('n', '<leader>fg', "<CMD>Telescope live_grep<CR>", { desc = 'telescope [g]rep'})
vim.keymap.set('n', '<leader>fw', "<CMD>Telescope grep_string<CR>", { desc = 'telescope [w]ord'})
vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>", { desc = 'telescope [h]elp'})

-- todo-comment search bindings '<leader>d'
vim.keymap.set('n', '<leader>dt', "<CMD>TodoTelescope keywords=TODO,FIX<CR>", { desc = '[t]odo'})
vim.keymap.set('n', '<leader>da', "<CMD>TodoTelescope<CR>", { desc = 'todo [a]ll' })
vim.keymap.set('n', '<leader>dq', "<CMD>TodoQuickFix<CR>", { desc = 'todo [q]uickfix'})

-- lsp search key bindings '<leader>l'
vim.keymap.set('n', '<leader>ld', "<CMD>Telescope lsp_definitions<CR>", { desc = 'lsp [d]efinitions'})
vim.keymap.set('n', '<leader>lr', "<CMD>Telescope lsp_references<CR>", { desc = 'lsp [r]eferences'})
vim.keymap.set('n', '<leader>lt', "<CMD>Telescope lsp_type_definitions<CR>", { desc = 'lsp [t]ype definitions'})
vim.keymap.set('n', '<leader>ls', "<CMD>Telescope lsp_document_symbols<CR>", { desc = 'lsp [s]ymbols'})


-- git search key bindings using telescope '<leader>g'
vim.keymap.set('n', '<leader>gb', "<CMD>Telescope git_branches<CR>", { desc = 'git [b]ranches'})
vim.keymap.set('n', '<leader>gc', "<CMD>Telescope git_commits<CR>", { desc = 'git commits ([r]epo)'})
vim.keymap.set('n', '<leader>gs', "<CMD>Telescope git_status<CR>", { desc = 'git [s]tatus'})

-- git commands using gitsigns '<leader>g'
vim.keymap.set('n', '<leader>gh', "<CMD>Gitsigns setloclist<CR>", { desc = 'git [h]unks'})
vim.keymap.set('n', '<leader>gp', "<CMD>Gitsigns preview_hunk<CR>", { desc = 'git [p]review hunk'})
vim.keymap.set('n', '<leader>gd', "<CMD>Gitsigns diffthis<CR>", { desc = 'git [d]iff'})
vim.keymap.set('n', '<leader>gn', "<CMD>Gitsigns stage_hunk<CR>", { desc = 'git (un)stage hu[n]k'})
vim.keymap.set('n', '<leader>gr', "<CMD>Gitsigns reset_hunk<CR>", { desc = 'git [r]eset hunk'})

-- LSP navigation using trouble '<leader>c'
vim.keymap.set('n', "<leader>cr", "<CMD>Trouble lsp_references toggle<CR>", { desc = "show [r]eferences" } )
vim.keymap.set('n', "<leader>cd", "<CMD>Trouble lsp_definitions<CR>", { desc = "goto [d]efinintion" } )
vim.keymap.set('n', "<leader>ct", "<CMD>Trouble lsp_type_definitions toggle<CR>", { desc = "goto [t]ype definintion" } )
vim.keymap.set('n', "<leader>cs", "<CMD>Trouble lsp_document_symbols win.position=right<CR>", { desc = "show [s]ymbols" } )

