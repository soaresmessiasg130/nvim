local M = require("cmp_nvim_lsp").default_capabilities()

M.textDocument.completion.completionItem.snippetSupport = true

return M
