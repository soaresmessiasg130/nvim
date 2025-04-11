local M = {}

M.dap = {
  cs = {
    {
      type = "coreclr",
      name = "Debug .NET Console",
      request = "launch",
      args = {},
      program = function()
        local cwd = vim.fn.getcwd()

        BuildDotnetProject(cwd)

        local project = GetLocalFoldersName()

        if project == nil then
          local actualFolderName = GetLocalFolderName()

          return string.format("%s/bin/Debug/net8.0/%s.dll", cwd, actualFolderName)
        end

        return string.format("%s/%s/bin/Debug/net8.0/%s.dll", cwd, project, project)
      end,
      cwd = function()
        local cwd = vim.fn.getcwd()

        local project = GetLocalFoldersName()

        if project == nil then
          return cwd
        end

        return string.format("%s/%s", cwd, project)
      end
    },
    {
      type = "coreclr",
      name = "TripMeeApp-Back - Auth",
      request = "launch",
      args = { "--urls", "http://+:8110" },
      program = function()
        local res = vim.fn.getcwd() .. "/TripMeeApp.Auth/bin/Debug/net6.0/TripMeeApp.Auth.dll"

        BuildDotnetProject(res)

        return res
      end,
      cwd = vim.fn.getcwd() .. "/TripMeeApp.Auth",
    },
    {
      type = "coreclr",
      name = "TripMeeApp-Back - Apis",
      request = "launch",
      args = { "--urls", "http://+:8120" },
      program = function()
        local res = vim.fn.getcwd() .. "/TripMeeApp.Apis/bin/Debug/net6.0/TripMeeApp.Apis.dll"

        BuildDotnetProject(res)

        return res
      end,
      cwd = vim.fn.getcwd() .. "/TripMeeApp.Apis",
    },
    {
      type = "coreclr",
      name = "TripMeeApp-Back - GetSales",
      request = "launch",
      args = {},
      program = function()
        local res = vim.fn.getcwd() .. "/TripMeeApp.GetSales/bin/Debug/net6.0/TripMeeApp.GetSales.dll"

        BuildDotnetProject(res)

        return res
      end,
      cwd = vim.fn.getcwd() .. "/TripMeeApp.GetSales",
    },
    {
      type = "coreclr",
      name = "TripMeeApp-Back - WintourIntegration",
      request = "launch",
      args = {},
      program = function()
        local res = vim.fn.getcwd() ..
            "/TripMeeApp.WintourIntegration/bin/Debug/net6.0/TripMeeApp.WintourIntegration.dll"

        BuildDotnetProject(res)

        return res
      end,
      cwd = vim.fn.getcwd() .. "/TripMeeApp.WintourIntegration",
    },
    {
      type = "coreclr",
      name = "TripMeeApp-Back - UpdateDatabaseContexts",
      request = "launch",
      args = {},
      program = function()
        local res = vim.fn.getcwd() ..
            "/TripMeeApp.UpdateDatabaseContexts/bin/Debug/net6.0/TripMeeApp.UpdateDatabaseContexts.dll"

        BuildDotnetProject(res)

        return res
      end,
      cwd = vim.fn.getcwd() .. "/TripMeeApp.UpdateDatabaseContexts",
    },
  }
}

return M
