-- Find files (excluding dirs)
local function find_files_only()
    require('telescope.builtin').find_files{
        find_command = {'find', '-type', 'f' }
    }
end

-- Temporarily disable search highlighting with double ESC tap
vim.keymap.set('n', '<ESC><ESC>', "<CMD>noh<CR>", { desc = 'disable highlighting' })

-- general search bindings using telescope '<leader>f'
vim.keymap.set('n', '<leader>ff', find_files_only, { desc = 'find [f]iles' })
vim.keymap.set('n', '<leader>fb', "<CMD>Telescope buffers<CR>", { desc = 'find [b]uffers'})
vim.keymap.set('n', '<leader>fd', "<CMD>Telescope diagnostics<CR>", { desc = 'find [d]iagnostics'})
vim.keymap.set('n', '<leader>fg', "<CMD>Telescope live_grep<CR>", { desc = 'find [g]rep'})
vim.keymap.set('n', '<leader>fw', "<CMD>Telescope grep_string<CR>", { desc = 'find [w]ord'})
vim.keymap.set('n', '<leader>fh', "<CMD>Telescope help_tags<CR>", { desc = 'find [h]elp'})
vim.keymap.set('n', '<leader>fn', "<CMD>Telescope find_files cwd=~/.config/nvim<CR>", { desc = 'find [n]eovim files' })
vim.keymap.set('n', '<leader>ft', "<CMD>TodoTelescope<CR>", { desc = 'find [t]odos' })

-- terminal keybinds
vim.keymap.set('n', '<leader><leader>', "<CMD>ToggleTerm<CR>", { desc = 'terminal [t]oggle' })
vim.keymap.set('t', '<ESC><ESC>', "<CMD>ToggleTerm<CR>", { desc = 'terminal [t]oggle' })

-- todo-comment search bindings '<leader>d'
vim.keymap.set('n', '<leader>t', "<CMD>TodoTrouble toggle<CR>", { desc = 'todos'})

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

-- Remaps
-- Use ctrl+direction to change pane/split
vim.keymap.set('n', "<c-j>", "<CMD>wincmd j<CR>", { desc = "go down split" })
vim.keymap.set('n', "<c-k>", "<CMD>wincmd k<CR>", { desc = "go up split" })
vim.keymap.set('n', "<c-l>", "<CMD>wincmd l<CR>", { desc = "go right split" })
vim.keymap.set('n', "<c-h>", "<CMD>wincmd h<CR>", { desc = "go left split" })
