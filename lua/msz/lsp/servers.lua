local M = {}

M.list = {
  {
    id = 'lua_ls',
    version = nil,
    install_by_mason = true,
    ensure_installed = true,
    setup = {
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
      settings = {},
    },
  },
}

M.get_ensure_installed = function()
  local res = {}
  for _, server in pairs(M.list) do
    if server['ensure_installed'] then
      local serverVersion = server['version']
          and '@' .. server['version']
          or ''
      table.insert(res, server['id'] .. serverVersion)
    end
  end
  return res
end

return M
