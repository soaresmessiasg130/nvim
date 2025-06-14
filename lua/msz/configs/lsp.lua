local mapConfig = require('msz.configs.maps')

local on_attach = function(client, bufnr)
  mapConfig.on_attach_buff(bufnr)

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

vim.lsp.config('*', {
  root_markers = { '.git' },
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          snippetSupport = true
        }
      },
      semanticTokens = {
        multilineTokenSupport = true
      }
    }
  }
})

for _, server in pairs(servers) do
  vim.lsp.config(server['id'], server['setup'])

  vim.lsp.enable(server['id'])
end

local mason_lspconfig = require('mason-lspconfig')

mason_lspconfig.setup({
  automatic_enable = true,
  automatic_installation = false,
  handlers = nil,
  ensure_installed = getServersThatEnsureInstalled(),
})
