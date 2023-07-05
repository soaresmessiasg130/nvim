local dap = require("dap")

dap.adapters.coreclr = {
  type = "executable",
  command = os.getenv("HOME") .. "/.local/share/nvim/mason/packages/netcoredbg/libexec/netcoredbg/netcoredbg",
  args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "Select .dll",
    request = "launch",
    program = function()
      return vim.fn.input("Path to dll: ", vim.fn.getcwd(), "file")
    end,
  },
  {
    type = "coreclr",
    name = "Debug .NET Console",
    request = "launch",
    args = {},
    program = function()
      local project = GetLocalFolderName()

      local res = string.format("%s/%s/bin/Debug/net6.0/%s.dll", vim.fn.getcwd(), project, project)

      BuildDotnetProject(res)

      return res
    end,
    cwd = function()
      local project = GetLocalFolderName()

      local res = string.format("%s/%s", vim.fn.getcwd(), project)

      return res
    end,
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
    name = "TripMeeApp-Back - PushNotifications",
    request = "launch",
    args = {},
    program = function()
      local res = vim.fn.getcwd() .. "/TripMeeApp.PushNotifications/bin/Debug/net6.0/TripMeeApp.PushNotifications.dll"

      BuildDotnetProject(res)

      return res
    end,
    cwd = vim.fn.getcwd() .. "/TripMeeApp.PushNotifications",
  },
}
