local lsp = require("lspconfig")

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
    setup = {
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

for _, server in pairs(servers) do
  lsp[server["id"]].setup(server["setup"])
end
