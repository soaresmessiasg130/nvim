return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
      { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
      { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Buffers" },
      { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Help Tags" },
      { "<leader>fs", function() require("telescope.builtin").git_status() end, desc = "Git Status" },
      { "<leader>fd", function() require("telescope.builtin").git_commits() end, desc = "Git Commits" },
      { "<leader>fa", function() require("telescope.builtin").diagnostics() end, desc = "Diagnostics" },
    },
    opts = {
      pickers = {
        find_files = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
        live_grep = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
        buffers = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
        help_tags = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
        git_status = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
        git_commits = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
        diagnostics = {
          layout_config = {
            vertical = {
              width = 0.80,
              height = 0.95,
              mirror = true,
            },
          },
        },
      },
      extensions = {},
    },
  },
}
