local names = require('msz.assets.names')
local icons = require('msz.assets.icons')
local fonts = require('msz.assets.fonts')

return {
  {
    'mistricky/codesnap.nvim',
    build = 'make',
    opts = {
      title = names.Me.FullName,
      watermark = names.Me.Tag,
      bg_theme = 'grape',
      save_path = '~/Pictures',
      has_line_number = true,
      mac_window_bar = true,
      has_breadcrumbs = false,
      breadcrumbs_separator = ' ' .. icons.Chevron.Right .. ' ',
      code_font_family = fonts.Mono.Main,
      watermark_font_family = fonts.Mono.Main,
    },
  },
}
