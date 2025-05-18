function BuildDotnetProject()
  local filename = os.tmpname()

  local command = "dotnet build > " .. filename

  os.execute(command)

  local file = io.open(filename, 'r')

  if not file then
    NotifyComponent({
      title = 'File not found',
      type = 'error',
      content = filename,
    })

    return
  end

  local fileContent = file:read("*a")

  file:close()

  if fileContent:find("0 Error") then
    NotifyComponent({
      title = 'Build success',
      type = 'success',
      content = 'command: ' .. command,
    })
  else
    NotifyComponent({
      title = 'Build error',
      type = 'error',
      content = 'command: ' .. command,
    })

    vim.cmd(string.format("45vsplit %s", filename))
  end
end
