local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local servers = {
  'cssls',
  'eslint',
  'html',
  'jsonls',
  'lua_ls',
  'omnisharp',
  'pyright',
  'rust_analyzer',
  'tailwindcss',
  'tsserver',
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  lsp.buffer_autoformat()
  lsp.default_keymaps({ buffer = bufnr })
end

lsp.on_attach = on_attach
lsp.capabilities = capabilities
lsp.ensure_installed(servers)
lsp.format_on_save({
  ['cssls'] = { 'css' },
  ['eslint'] = { 'js', 'jsx', 'ts', 'd.ts', 'tsx' },
  ['html'] = { 'html' },
  ['jsonls'] = { 'json', 'jsonc' },
  ['lua_ls'] = { 'lua' },
  ['omnisharp'] = { 'cs', 'csproj', 'sln' },
  ['pyright'] = { 'py' },
  ['rust_analyzer'] = { 'rs' },
  ['tailwindcss'] = { 'css', 'html' },
  ['tsserver'] = { 'ts', 'd.ts', 'tsx' },
})

lsp.setup()
