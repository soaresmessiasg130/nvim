local dap, dap_ui = require('dap'), require("dapui")

dap_ui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function ()
  dap_ui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function ()
  dap_ui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function ()
  dap_ui.close()
end
