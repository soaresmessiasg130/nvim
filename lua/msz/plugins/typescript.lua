return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    config = function(_, opts)
      local handlers = require('msz.lsp.handlers')
      opts.on_attach = handlers.on_attach
      opts.capabilities = handlers.capabilities
      require('typescript-tools').setup(opts)
    end,
    opts = {
      jsx_close_tag = {
        enable = true,
        filetypes = { 'javascriptreact', 'typescriptreact', 'javascript', 'typescript' },
      },
      settings = {
        tsserver_plugins = {
          '@styled/typescript-styled-plugin', -- for Typescript +4.9
          'typescript-styled-plugin',         -- for Typescript < +4.9
        },
      },
    },
  },
}
