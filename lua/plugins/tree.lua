return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
