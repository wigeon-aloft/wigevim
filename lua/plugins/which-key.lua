return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
        { "<leader>f", group = "find", icon = { icon = "󰍉", color = "orange" }},
        { "<leader>g", group = "git", icon = { icon = "", color = "orange" }},
        { "<leader>c", group = "code", icon = { icon = "󰅩", color = "orange" }},
        { "<leader>d", group = "todo", icon = { icon = "", color = "orange" } },
        { "<leader>dq", group = "todo", icon = { icon = "", color = "orange" } },
    }
},
  keys = {
    {
        "<leader>?",
        function()
            require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
