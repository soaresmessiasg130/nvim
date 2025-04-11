local function map(mode, keys, commands)
  vim.keymap.set(mode, keys, commands, {
    noremap = true,
    silent = true,
  })
end

return {
  map = map
}
