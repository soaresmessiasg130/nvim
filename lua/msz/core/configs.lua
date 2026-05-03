local icons = require('msz.assets.icons')
local colors = require('msz.assets.colors')

vim.api.nvim_set_hl(0, 'red', { bg = 'none', fg = colors.palette.red })
vim.api.nvim_set_hl(0, 'pink', { bg = 'none', fg = colors.palette.pink })
vim.api.nvim_set_hl(0, 'blue', { bg = 'none', fg = colors.palette.blue })
vim.api.nvim_set_hl(0, 'green', { bg = 'none', fg = colors.palette.green })
vim.api.nvim_set_hl(0, 'yellow', { bg = 'none', fg = colors.palette.yellow })
vim.api.nvim_set_hl(0, 'orange', { bg = 'none', fg = colors.palette.orange })

vim.fn.sign_define('DiagnosticSignError', { text = icons.Diagnostics.Error, texthl = 'red' })
vim.fn.sign_define('DiagnosticSignWarn', { text = icons.Diagnostics.Warn, texthl = 'yellow' })
vim.fn.sign_define('DiagnosticSignInfo', { text = icons.Diagnostics.Info, texthl = 'blue' })
vim.fn.sign_define('DiagnosticSignHint', { text = icons.Diagnostics.Hint, texthl = 'blue' })

vim.diagnostic.config {
  virtual_text = false,
  float = {
    border = 'rounded',
  }
}
