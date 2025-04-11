local typescript_tools = require('typescript-tools')
local on_attach = require("msz.src.lsp.on-attach")
local capabilities = require("msz.src.lsp.capabilities")

typescript_tools.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
