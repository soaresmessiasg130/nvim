local dap, dap_ui = require("dap"), require("dapui")

dap_ui.setup({
  layouts = {
    {
      size = 30,
      position = "right",
      elements = {
        -- { id = "repl", size = 0.20 },
        "scopes",
        "watches",
        "breakpoints",
      },
    },
    {
      size = 4,
      position = "bottom",
      elements = {
        "repl",
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
    max_type_length = 20, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
    max_value_columns = 80, -- Can be integer or nil.
  },
  expand_lines = false,
  icons = {
    collapsed = "",
    current_frame = "",
    expanded = "",
  },
})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dap_ui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dap_ui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dap_ui.close()
end

vim.api.nvim_set_hl(0, "red", { fg = "#ff4030" })
vim.api.nvim_set_hl(0, "pink", { fg = "#ffaaaa" })
vim.api.nvim_set_hl(0, "blue", { fg = "#3d59a1" })
vim.api.nvim_set_hl(0, "green", { fg = "#9ece6a" })
vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" })
vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" })

vim.fn.sign_define("DapBreakpoint", { text = "-", texthl = "red" })
vim.fn.sign_define("DapBreakpointCondition", { text = "-", texthl = "blue" })
vim.fn.sign_define("DapBreakpointRejected", { text = "-", texthl = "pink" })
vim.fn.sign_define("DapStopped", { text = "<", texthl = "green" })
vim.fn.sign_define("DapLogPoint", { text = "-", texthl = "yellow" })
