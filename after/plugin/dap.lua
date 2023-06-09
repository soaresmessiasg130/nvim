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
    name = "Debug .Net Project",
    request = "launch",
    args = { "--urls", "http://+:8110" },
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
    name = "Auth - TripMeeApp-Back",
    request = "launch",
    args = { "--urls", "http://+:8110" },
    cwd = os.getenv("HOME") .. "/Desktop/TripMeeApp-Back/TripMeeApp.Auth",
    program = os.getenv("HOME") .. "/Desktop/TripMeeApp-Back/TripMeeApp.Auth/bin/Debug/net6.0/TripMeeApp.Auth.dll",
  },
  {
    type = "coreclr",
    name = "Apis - TripMeeApp-Back",
    request = "launch",
    args = { "--urls", "http://+:8120" },
    cwd = os.getenv("HOME") .. "/Desktop/TripMeeApp-Back/TripMeeApp.Apis",
    program = os.getenv("HOME") .. "/Desktop/TripMeeApp-Back/TripMeeApp.Apis/bin/Debug/net6.0/TripMeeApp.Apis.dll",
  },
}
