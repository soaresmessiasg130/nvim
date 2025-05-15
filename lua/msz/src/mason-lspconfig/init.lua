local lspconfig_windows = require('lspconfig.ui.windows')
local mason_lspconfig = require('mason-lspconfig')
local lspSrc = require('msz.src.lsp')

mason_lspconfig.setup({
  automatic_installation = false,
  handlers = nil,
  ensure_installed = lspSrc.ensure_installed,
})

lspconfig_windows.default_options.border = 'rounded'
