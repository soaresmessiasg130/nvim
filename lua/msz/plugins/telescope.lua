return {
  {
    'nvim-telescope/telescope.nvim',
    dependendcies = { 'nvim-lua/plenary.nvim' },
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
