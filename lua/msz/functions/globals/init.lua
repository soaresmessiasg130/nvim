local notify = require('notify')

function ListFolders(dir)
  local command = string.format("ls -d */")

  if dir then
    command = string.format("cd %s;ls -d */", dir)
  end

  local p = io.popen(command)

  if p == nil then
    return
  end

  local folders = {}

  for line in p:lines() do
    table.insert(folders, #folders, line)
  end

  p:close()

  return folders
end

function GetLocalFolderName()
  local actualFolder = io.popen("basename \"$PWD\"")

  if actualFolder == nil then
    return
  end

  local folderName = nil

  for line in actualFolder:lines() do
    folderName = line
  end

  return folderName
end

function GetLocalFoldersName(message, dir)
  if message == nil then
    message = "Choose a folder: "
  end

  local folders = ListFolders(dir)

  if folders == nil then
    return nil
  end

  local inputs = { message }

  local inputsLengthBefore = #inputs

  for i = 0, #folders do
    table.insert(inputs, string.format("%s. %s", i + 1, folders[i]))
  end

  local res = vim.fn.inputlist(inputs)

  if res > #inputs - 1 or res == 0 then
    return nil
  end

  local selected = inputs[res + inputsLengthBefore]

  print("\n")

  return string.sub(selected, 4, string.len(selected) - 1)
end

function BuildDotnetProject(workspace)
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
