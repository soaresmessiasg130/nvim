local nvim_dap_virtual_text = require("nvim-dap-virtual-text")

nvim_dap_virtual_text.setup({
  enabled = true,
  enabled_commands = true,
  highlight_changed_variables = true,
  highlight_new_as_changed = false,
  show_stop_reason = true,
  commented = false,
  only_first_definition = true,
  all_references = false,
  virt_text_pos = "eol",
  display_callback = function(variable, _buf, _stackframe, _node)
    return " = " .. variable.value
  end,
})
