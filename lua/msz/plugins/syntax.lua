return {
  { "norcalli/nvim-colorizer.lua" },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })()
    end,
    opts = {
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
    }
  }
}
