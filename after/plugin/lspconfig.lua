local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
  },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  local opts = {
    noremap = true,
    silent = true,
  }

  buf_set_keymap("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
end

local servers = {
  {
    id = "lua_ls",
    version = "latest",
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = {'vim'},
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
            enable = false,
          },
        },
      },
    },
  },
}

local function getServersIds()
  local res = {}

  for _, server in pairs(servers) do
    table.insert(res, server["id"] .. "@" .. server["version"])
  end

  return res
end

local servers_ids = getServersIds()

mason_lspconfig.setup({
  automatic_installation = true,
  handlers = nil,
  ensure_installed = servers_ids,
})

for _, server in pairs(servers) do
  lspconfig[server["id"]].setup(server["setup"])
end
