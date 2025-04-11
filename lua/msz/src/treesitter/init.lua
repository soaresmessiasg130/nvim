local treesitter = require('nvim-treesitter.configs')
local nvim_ts_autotag = require('nvim-ts-autotag')

treesitter.setup({
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false
  },
  indent = { enable = true },
  ignore_install = {},
  ensure_installed = {
    'html',
    'css',
    'javascript',
    'c_sharp',
    'json',
    'jsonc',
    'lua',
    'dart',
    'java',
    'typescript',
    'markdown',
    'vim',
    'c',
    'bash',
  },
})

nvim_ts_autotag.setup({
  opts = {
    enable_close = true,
    enable_rename = true,
    enable_close_on_slash = true,
  },
})
