local lspconfig = require('lspconfig')
local capabilities = require('msz.src.lsp.capabilities')
local on_attach = require('msz.src.lsp.on-attach')

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
        Lua = {
          runtime = {
            version = 'LuaJIT',
          },
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
          },
          telemetry = {
            enable = false,
          },
          completion = {
            callSnippet = 'Replace',
          },
        },
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

local function getServersIds()
  local res = {}

  for _, server in pairs(servers) do
    if server['install_by_mason'] then
      local serverVersion = server['version']
          and '@' .. server['version']
          or ''

      table.insert(res, server['id'] .. serverVersion)
    end
  end

  return res
end

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

local M = {}

M.servers_ids = getServersIds()

M.ensure_installed = getServersThatEnsureInstalled()

return M
