local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.on_attach(function(client, bufnr)
  lsp.buffer_autoformat()
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
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
  'jdtls',
})

lsp.format_on_save({
  ['cssls'] = { 'css' },
  ['eslint'] = { 'js', 'jsx', 'ts', 'tsx' },
  ['html'] = { 'html' },
  ['jsonls'] = { 'json', 'jsonc' },
  ['lua_ls'] = { 'lua' },
  ['omnisharp'] = { 'cs' },
  ['pyright'] = { 'py' },
  ['rust_analyzer'] = { 'rs' },
  ['tailwindcss'] = { 'css', 'html' },
  ['tsserver'] = { 'ts', 'tsx' },
  ['jdtls'] = { 'java' },
})

lsp.setup()
