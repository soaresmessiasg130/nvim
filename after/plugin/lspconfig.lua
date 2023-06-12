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

capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(_, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  local opts = {
    noremap = true,
    silent = true,
  }

  buf_set_keymap("n", "<leader>lo", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "<leader>loo", "<CMD>lua vim.lsp.buf.signature_help()<CR>", opts)

  buf_set_keymap("n", "<leader>li", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "<leader>lii", "<CMD>lua vim.lsp.buf.type_definition()<CR>", opts)

  buf_set_keymap("n", "<leader>lu", "<CMD>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "<leader>luu", "<CMD>lua vim.lsp.buf.implementation()<CR>", opts)

  buf_set_keymap("n", "<leader>lp", "<CMD>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "<leader>lpp", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)

  buf_set_keymap("n", "<leader>ly", "<CMD>lua vim.lsp.buf.format({ async = true })<CR>", opts)
  buf_set_keymap("n", "<leader>lyy", "<CMD>lua vim.lsp.buf.rename()<CR>", opts)
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
            globals = { 'vim' },
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
  {
    id = "pyright",
    version = "latest",
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    }
  },
  {
    id = "tsserver",
    version = "latest",
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    }
  },
  {
    id = "cssls",
    version = "latest",
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    }
  },
  {
    id = "omnisharp",
    version = "v1.38.0",
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    }
  },
  {
    id = "eslint",
    version = "latest",
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    }
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
