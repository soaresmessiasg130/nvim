local toggletermFunctions = require('msz.functions.toggleterm')
local keymaps = require('msz.assets.keymaps')

local terminal = toggletermFunctions.createCustomTerminal({
  display_name = 'Bpytop',
  cmd = 'bpytop',
  direction = 'float',
  count = 2,
})

function __toggle_bpytop()
  terminal:toggle()
end

vim.api.nvim_set_keymap('n', keymaps.BPYTOP, '<cmd>lua __toggle_bpytop()<CR>', {
  noremap = true,
  silent = true,
})
