-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
        { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
        { out, "WarningMsg" },
        { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Editing options
vim.opt.wrap = false

-- Tell nvim netrw is already loaded, this effectively disables it
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Show chars to show in place of invisible characters
vim.opt.listchars = "tab:  ,leadtab:» ,trail:·,leadmultispace:›   ,extends:⭢,precedes:⭠"
vim.opt.list = true

-- GUI options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

-- Search options
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Navigation options
vim.opt.matchpairs = "(:),[:],{:},<:>"
vim.opt.scroll = 15

-- Miscellaneous
vim.opt.undofile = true

vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')

require("config.keybinds")

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
    {'tknightz/telescope-termfinder.nvim'},

    require("plugins.alpha"),
    require("plugins.cmp"),
    require("plugins.gruvbox"),
    require("plugins.lspconfig"),
    require("plugins.mason"),
    require("plugins.telescope"),
    require("plugins.todo-comments"),
    require("plugins.toggleterm"),
    require("plugins.trouble"),
    require("plugins.which-key"),
  },
    colorscheme = "gruvbox-material",
    checker = { enabled = true },
})
