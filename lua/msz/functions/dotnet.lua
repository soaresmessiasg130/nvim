local notify = require('notify')

function BuildDotnetProject()
  local filename = os.tmpname()

  local command = "dotnet build > " .. filename

  os.execute(command)

  if notify then
    local file = io.open(filename, 'r')

    if not file then
      notify('File "' .. filename .. '" not found!!!')

      return
    end

    local fileContent = file:read("*a")

    file:close()

    if fileContent:find("0 Error") then
      notify('command: ' .. command, 'success', {
        title = 'Build success'
      })
    else
      notify('command: ' .. command, 'error', {
        title = 'Build error'
      })

      vim.cmd(string.format("45vsplit %s", filename))
    end
  else
    vim.cmd(string.format("45vsplit %s", filename))
  end
end
