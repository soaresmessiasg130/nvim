local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  local opts = {
    noremap = true,
    silent = true,
  }

  print('HELLO 01')

  buf_set_keymap("n", "<leader>lo", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "<leader>loo", "<CMD>lua vim.lsp.buf.signature_help()<CR>", opts)

  buf_set_keymap("n", "<leader>li", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "<leader>lii", "<CMD>lua vim.lsp.buf.references()<CR>", opts)

  buf_set_keymap("n", "<leader>lu", "<CMD>lua vim.lsp.diagnostic.on_diagnostic()<CR>", opts)
  buf_set_keymap("n", "<leader>luu", "<CMD>lua vim.diagnostic.open_float(nil, { focus = false })<CR>", opts)

  buf_set_keymap("n", "<leader>lyy", "<CMD>lua vim.lsp.buf.format({ async = false })<CR>", opts)
  buf_set_keymap("n", "<leader>ly", "<CMD>lua vim.lsp.buf.rename()<CR>", opts)

  buf_set_keymap("n", "<leader>lp", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)

  print('HELLO 02')

  if client.server_capabilities.documentFormattingProvider then
    if client.name == "eslint" or client.name == "typescript-tools" then
      vim.api.nvim_create_autocmd("BufWritePre", {
        command = "EslintFixAll",
        buffer = bufnr,
      })
    else
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("Format", { clear = true }),
        buffer = bufnr,
        callback = function() vim.lsp.buf.format() end,
      })
    end
  end
end

local typescript_tools = require('typescript-tools')
typescript_tools.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

local lspconfig_windows = require('lspconfig.ui.windows')
lspconfig_windows.default_options.border = 'rounded'

local servers = {
  {
    id = 'lua_ls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {},
      },
    },
  },
  {
    id = 'pyright',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'omnisharp',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      enable_editorconfig_support = true,
      enable_ms_build_load_projects_on_demand = false,
      enable_roslyn_analyzers = false,
      organize_imports_on_format = true,
      enable_import_completion = true,
      sdk_include_prereleases = true,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'eslint',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
  {
    id = 'html',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'cssls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'jsonls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'dockerls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'marksman',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'clojure_lsp',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    }
  },
  {
    id = 'lemminx',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
  {
    id = 'bashls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
  {
    id = 'angularls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  },
  {
    id = 'gopls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {},
    },
  },
}

local function getServersThatEnsureInstalled()
  local res = {}

  for _, server in pairs(servers) do
    if server['ensure_installed'] then
      local serverVersion = server['version']
          and '@' .. server['version']
          or ''

      table.insert(res, server['id'] .. serverVersion)
    end
  end

  return res
end

for _, server in pairs(servers) do
  lspconfig[server["id"]].setup(server["setup"])
end

local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup({
  automatic_installation = false,
  handlers = nil,
  ensure_installed = getServersThatEnsureInstalled(),
})
