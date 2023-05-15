local lsp = require("lsp-zero").preset({
  float_border = "rounded",
  call_servers = "local",
  configure_diagnostics = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = {
    preserve_mappings = false,
    omit = {},
  },
  manage_nvim_cmp = {
    set_sources = "recommended",
    set_basic_mappings = false,
    set_extra_mappings = false,
    use_luasnip = true,
    set_format = true,
    documentation_window = true,
  },
})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  lsp.buffer_autoformat()
end)

lsp.capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.ensure_installed({
  "cssls",
  "eslint",
  "html",
  "jsonls",
  "lua_ls",
  "pyright",
  "rust_analyzer",
  "tailwindcss",
  "tsserver",
  "omnisharp@v1.38.2",
})

lsp.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 1000,
  },
  servers = {
    ["cssls"] = { "css" },
    ["eslint"] = { "js", "jsx", "ts", "d.ts", "tsx" },
    ["html"] = { "html" },
    ["jsonls"] = { "json", "jsonc" },
    ["lua_ls"] = { "lua" },
    ["pyright"] = { "py" },
    ["rust_analyzer"] = { "rs" },
    ["tailwindcss"] = { "css", "html" },
    ["tsserver"] = { "js", "jsx", "ts", "d.ts", "tsx" },
    ["omnisharp"] = { "cs", "csproj", "sln" },
  },
})

lsp.set_sign_icons({
  error = "✘",
  warn = "▲",
  hint = "⚑",
  info = "»",
})

lsp.set_server_config({
  single_file_support = false,
  capabilities = {
    textDocument = {
      foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      },
    },
  },
})

require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
