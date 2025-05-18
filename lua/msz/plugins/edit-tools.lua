return {
  {
    'fedepujol/move.nvim',
    opts = {
      line = {
        enable = true,
        indent = true,
      },
      block = {
        enable = true,
        indent = true,
      },
      word = {
        enable = true,
      },
      char = {
        enable = false,
      }
    }
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = {
        line = 'bo',
        block = 'boo',
      },
      opleader = {
        line = 'bo',
        block = 'boo',
      },
      extra = {
        above = '<leader>bpp',
        below = '<leader>bp',
        eol = '<leader>bop',
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    },
  },
  {
    'karb94/neoscroll.nvim',
    opts = {
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      easing = 'linear',
      performance_mode = false,
    },
  },
  { 'windwp/nvim-ts-autotag' }
}
