return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      spec = {
        { "<leader>f", group = "find" },
        { "<leader>j", group = "neotree" },
        { "<leader>t", group = "terminal" },
        { "<leader>n", group = "git (signs)" },
        { "<leader>k", group = "folding" },
        { "<leader>l", group = "lsp/tools" },
        { "<leader>h", group = "history" },
      },
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
  },
}
