local toggletermFunctions = require('msz.functions.toggleterm')
local keymaps = require('msz.assets.keymaps')

local terminal = toggletermFunctions.createCustomTerminal({
  display_name = 'Lazygit',
  cmd = 'lazygit',
  direction = 'float',
  count = 1,
})

function __toggle_lazygit()
  terminal:toggle()
end

vim.api.nvim_set_keymap('n', keymaps.LAZYGIT, '<cmd>lua __toggle_lazygit()<CR>', {
  noremap = true,
  silent = true,
})
