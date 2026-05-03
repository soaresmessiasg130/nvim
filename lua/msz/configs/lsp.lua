local handlers = require('msz.lsp.handlers')
local servers = require('msz.lsp.servers')

-- Setup shared handlers (diagnostic signs, global config, UI)
handlers.setup()

-- Setup individual servers
for _, server in pairs(servers.list) do
  local config = server['setup'] or {}
  config.on_attach = handlers.on_attach
  config.capabilities = handlers.capabilities

  vim.lsp.config(server['id'], config)
  vim.lsp.enable(server['id'])
end

-- Setup Mason LSP config
local has_mason_lsp, mason_lspconfig = pcall(require, 'mason-lspconfig')
if has_mason_lsp then
  mason_lspconfig.setup({
    automatic_enable = true,
    automatic_installation = false,
    handlers = nil,
    ensure_installed = servers.get_ensure_installed(),
  })
end
