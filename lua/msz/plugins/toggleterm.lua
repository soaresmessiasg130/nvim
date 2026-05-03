return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      { "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>", desc = "Terminal Horizontal" },
      { "<leader>tv", "<CMD>ToggleTerm size=40 direction=vertical<CR>", desc = "Terminal Vertical" },
      { "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", desc = "Terminal Float" },
    },
    opts = {
      size = 10,
      open_mapping = [[`]],
      shading_factor = 2,
      direction = "float",
      shell = "zsh",
      float_opts = {
        border = "rounded",
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    },
  },
}
