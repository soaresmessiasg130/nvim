local icons = require('msz.assets.icons')

return {
  {
    'theHamsta/nvim-dap-virtual-text',
    opts = {
      enabled = true,
      enabled_commands = true,
      highlight_changed_variables = true,
      highlight_new_as_changed = false,
      show_stop_reason = true,
      commented = false,
      only_first_definition = true,
      all_references = false,
      virt_text_pos = "eol",
      display_callback = function(variable, _, _, _)
        return " = " .. variable.value
      end,
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
    opts = {
      layouts = {
        {
          size = 7,
          position = "bottom",
          elements = {
            { id = "repl",        size = 0.4 },
            { id = "scopes",      size = 0.4 },
            { id = "breakpoints", size = 0.2 },
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
      windows = { indent = 8 },
      render = {
        max_type_length = 20,
        max_value_lines = 100,
        max_value_columns = 80,
      },
      expand_lines = false,
      icons = {
        collapsed = icons.Folder.ArrowClosed,
        expanded = icons.Folder.ArrowOpened,
        current_frame = icons.Circle.Tiny,
      },
    },
  },
}
