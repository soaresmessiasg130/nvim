local dap, dap_ui = require('dap'), require("dapui")

dap_ui.setup({
  layouts = {
    {
      size = 40,
      position = 'right',
      elements = {
        { id = "repl", size = 0.25 },
        "scopes",
        "watches",
        "breakpoints",
      },
    },
  },
  floating = {
    max_width = 0.25,
    max_height = 80,
    border = "double",
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
    max_value_columns = 80, -- Can be integer or nil.
  }
})

dap.listeners.after.event_initialized['dapui_config'] = function ()
  dap_ui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function ()
  dap_ui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function ()
  dap_ui.close()
end
