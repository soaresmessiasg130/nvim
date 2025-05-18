local toggletermFunctions = require('msz.functions.toggleterm')

local terminal = toggletermFunctions.createCustomTerminal({
  display_name = 'Lazygit',
  cmd = 'lazygit',
  direction = 'float',
  count = 1,
})

function __toggle_lazygit()
  terminal:toggle()
end

vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>lua __toggle_lazygit()<CR>', {
  noremap = true,
  silent = true,
})
