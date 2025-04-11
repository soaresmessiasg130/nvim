local terminal = require('toggleterm.terminal').Terminal

local function createCustomTerminal(props)
  return terminal:new({
    display_name = props.display_name,
    cmd = props.cmd,
    hidden = true,
    direction = props.direction,
    float_opts = {
      border = 'rounded',
    },
    count = props.count,
    on_open = function(term)
      vim.cmd('startinsert!')

      vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', {
        noremap = true,
        silent = true,
      })
    end,
    on_close = function(term)
      vim.cmd('startinsert!')
    end,
  })
end

return {
  createCustomTerminal = createCustomTerminal,
}
