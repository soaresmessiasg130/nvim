function MapFunction(mode, keys, commands, desc)
  vim.keymap.set(mode, keys, commands, {
    noremap = true,
    silent = true,
    desc = desc,
  })
end

function MapBuffFunction(buff, mode, keys, command, desc)
  vim.keymap.set(mode, keys, command, {
    noremap = true,
    silent = true,
    buffer = buff,
    desc = desc,
  })
end
