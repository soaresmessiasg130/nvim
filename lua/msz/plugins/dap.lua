local icons = require('msz.assets.icons')
local colors = require('msz.assets.colors')

return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
      'theHamsta/nvim-dap-virtual-text',
    },
    keys = {
      { "<F5>", "<CMD>DapContinue<CR>", desc = "DAP Continue" },
      { "<F6>", "<CMD>DapStepInto<CR>", desc = "DAP Step Into" },
      { "<F7>", "<CMD>DapStepOut<CR>", desc = "DAP Step Out" },
      { "<F8>", "<CMD>DapStepOver<CR>", desc = "DAP Step Over" },
      { "<F9>", "<CMD>DapTerminate<CR>", desc = "DAP Terminate" },
      { "<F10>", "<CMD>DapToggleBreakpoint<CR>", desc = "DAP Toggle Breakpoint" },
    },
    config = function()
      local dap = require('dap')
      local dapui = require('dapui')

      -- Virtual Text Setup
      require('nvim-dap-virtual-text').setup({
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
      })

      -- DAP UI Setup
      dapui.setup({
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
      })

      -- DAP Configuration
      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            return vim.fn.input('Path to DLL: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end
        }
      }

      dap.adapters.coreclr = {
        type = 'executable',
        command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/netcoredbg/libexec/netcoredbg/netcoredbg',
        args = { '--interpreter=vscode' },
      }

      -- Listeners
      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end

      -- Signs & Highlights
      vim.api.nvim_set_hl(0, 'red', { bg = 'none', fg = colors.palette.red })
      vim.api.nvim_set_hl(0, 'pink', { bg = 'none', fg = colors.palette.pink })
      vim.api.nvim_set_hl(0, 'blue', { bg = 'none', fg = colors.palette.blue })
      vim.api.nvim_set_hl(0, 'green', { bg = 'none', fg = colors.palette.green })
      vim.api.nvim_set_hl(0, 'yellow', { bg = 'none', fg = colors.palette.yellow })
      vim.api.nvim_set_hl(0, 'orange', { bg = 'none', fg = colors.palette.orange })

      vim.fn.sign_define('DapBreakpoint', { text = icons.Circle.Big, texthl = 'red' })
      vim.fn.sign_define('DapBreakpointCondition', { text = icons.Action.Select, texthl = 'blue' })
      vim.fn.sign_define('DapBreakpointRejected', { text = icons.Action.CloseAlt, texthl = 'pink' })
      vim.fn.sign_define('DapStopped', { text = icons.Arrow.Right, texthl = 'green' })
      vim.fn.sign_define('DapLogPoint', { text = icons.Common.Comment, texthl = 'yellow' })
    end,
  },
}
