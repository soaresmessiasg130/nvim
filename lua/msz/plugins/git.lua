local icons = require('msz.assets.icons')

return {
  { 'akinsho/git-conflict.nvim', version = "*", config = true },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs                        = {
        add          = { text = icons.Git.Add },
        change       = { text = icons.Git.Change },
        changedelete = { text = icons.Git.ChangeDeleted },
        delete       = { text = icons.Git.Deleted },
        topdelete    = { text = icons.Git.TopDeleted },
        untracked    = { text = icons.Git.Untracked },
      },
      signs_staged                 = {
        add          = { text = icons.Git.Add },
        change       = { text = icons.Git.Change },
        changedelete = { text = icons.Git.ChangeDeleted },
        delete       = { text = icons.Git.Deleted },
        topdelete    = { text = icons.Git.TopDeleted },
        untracked    = { text = icons.Git.Untracked },
      },
      signs_staged_enable          = true,
      signcolumn                   = true,
      numhl                        = false,
      linehl                       = false,
      word_diff                    = false,
      watch_gitdir                 = {
        follow_files = true
      },
      auto_attach                  = true,
      attach_to_untracked          = true,
      current_line_blame           = true,
      current_line_blame_opts      = {
        virt_text = true,
        -- 'eol' | 'overlay' | 'right_align'
        virt_text_pos = 'eol',
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
      sign_priority                = 6,
      update_debounce              = 100,
      status_formatter             = nil,
      max_file_length              = 40000,
      preview_config               = {
        border = 'rounded',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
      },
    }
  },
}
