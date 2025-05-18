local icons = require('msz.assets.icons')

return {
  {
    'L3MON4D3/LuaSnip',
    version = 'v2.*',
    build = 'make install_jsregexp',
    dependencies = { 'rafamadriz/friendly-snippets' },
  },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'rasulomaroff/cmp-bufname' },
  { 'amarakon/nvim-cmp-buffer-lines' },
  { 'hrsh7th/cmp-calc' },
  { 'hrsh7th/cmp-nvim-lsp-signature-help' },
  { 'JMarkin/cmp-diag-codes' },
  { 'FelipeLema/cmp-async-path' },
  { 'lukas-reineke/cmp-rg' },
  { 'hrsh7th/cmp-emoji' },
  { 'chrisgrieser/cmp-nerdfont' },
  { 'SergioRibera/cmp-dotenv' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'hrsh7th/nvim-cmp' },
  {
    'williamboman/mason.nvim',
    opts = {
      ui = {
        border = 'rounded',
        icons = {
          package_installed = icons.Lsp.server_installed,
          package_pending = icons.Lsp.server_pending,
          package_uninstalled = icons.Lsp.server_uninstalled
        },
      },
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      automatic_installation = false,
      handlers = nil,
    },
  },
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
  },
  { "rafamadriz/friendly-snippets" },
}
