local icons = require('msz.assets.icons')

return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    opts = {
      theme = 'hyper',
      shortcut_type = 'number',
      disable_move = true,
      config = {
        week_header = {
          enable = true,
        },
        packages = {
          enable = true,
        },
        project = {
          enable = false,
        },
        mru = {
          limit = 10,
          icon = icons.Folder.Opened,
          label = 'Recents',
          cwd_only = true,
        },
        shortcut = {
          {
            icon = icons.Folder.Opened,
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Neotree reveal',
            key = 'f',
          },
          {
            icon = icons.KindIcons.Event,
            icon_hl = '@variable',
            desc = 'Update',
            group = '@property',
            action = 'Lazy update',
            key = 'u'
          },
          {
            icon = icons.Action.Select,
            icon_hl = '@variable',
            desc = 'Quit',
            group = 'Number',
            action = 'qa',
            key = 'q',
          },
        },
      },
    },
  }
}
