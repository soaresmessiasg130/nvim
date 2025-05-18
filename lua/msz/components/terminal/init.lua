local mapFunctions = require('msz.functions.map')
local terminal = require('toggleterm.terminal').Terminal

function TerminalComponent(props)
  local terminalInstance = terminal:new({
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

      mapFunctions.mapBuff(term.bufnr, 'n', 'q', '<cmd>close<CR>')
    end,
    on_close = function()
      vim.cmd('startinsert!')
    end,
  })

  terminalInstance:toggle()
end
