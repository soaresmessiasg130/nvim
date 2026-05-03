local M = {}

M.on_attach = function(client, bufnr)
  local mapConfig = require('msz.configs.maps')
  mapConfig.on_attach_buff(bufnr)
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities.textDocument.completion.completionItem.snippetSupport = true
M.capabilities.textDocument.semanticTokens = {
  multilineTokenSupport = true
}

local has_cmp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if has_cmp then
  M.capabilities = vim.tbl_deep_extend('force', M.capabilities, cmp_nvim_lsp.default_capabilities())
end

M.setup = function()
  local icons = require('msz.assets.icons')

  -- Diagnostic Signs
  vim.fn.sign_define('DiagnosticSignError', { text = icons.Diagnostics.Error, texthl = 'DiagnosticSignError' })
  vim.fn.sign_define('DiagnosticSignWarn', { text = icons.Diagnostics.Warn, texthl = 'DiagnosticSignWarn' })
  vim.fn.sign_define('DiagnosticSignInfo', { text = icons.Diagnostics.Info, texthl = 'DiagnosticSignInfo' })
  vim.fn.sign_define('DiagnosticSignHint', { text = icons.Diagnostics.Hint, texthl = 'DiagnosticSignHint' })

  -- Global Diagnostic Config
  vim.diagnostic.config({
    virtual_text = false,
    float = {
      border = 'rounded',
    }
  })

  -- LSP UI config
  local has_lspconfig_windows, lspconfig_windows = pcall(require, 'lspconfig.ui.windows')
  if has_lspconfig_windows then
    lspconfig_windows.default_options.border = 'rounded'
  end

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })

  -- Global LSP Config
  vim.lsp.config('*', {
    root_markers = { '.git' },
    capabilities = M.capabilities,
  })
end

return M
