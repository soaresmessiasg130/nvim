function MapFunction(mode, keys, commands)
  vim.keymap.set(mode, keys, commands, {
    noremap = true,
    silent = true,
  })
end

function MapBuffFunction(buff, mode, keys, command)
    vim.api.nvim_buf_set_keymap(buff, mode, keys, command, {
      noremap = true,
      silent = true,
    })
end
