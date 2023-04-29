function ListFolders()
  local p = io.popen("ls -d */")

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

function GetLocalFolderName(message)
  if message == nil then
    message = "Choose a folder: "
  end

  local folders = ListFolders()

  if folders == nil then
    return nil
  end

  local inputs = { message }

  local inputsLengthBefore = #inputs

  for i = 0, #folders do
    table.insert(inputs, string.format("%s. %s", i + 1, folders[i]))
  end

  local res = vim.fn.inputlist(inputs)

  if res > #inputs - 1 then
    return
  end

  local selected = inputs[res + inputsLengthBefore]

  print("\n")

  return string.sub(selected, 4, string.len(selected) - 1)
end
