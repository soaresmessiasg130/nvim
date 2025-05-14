local dap = require('dap')
local dap_ui = require('dapui')
local icons = require('msz.assets.icons')
local colors = require('msz.assets.colors')
local notify = require('notify')

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

dap.configurations.java = {
  {
    javaExec = "/path/to/your/bin/java",
    mainClass = "com.messiasspp.testingjavanvim.TestingjavanvimApplication",
    name = "Launch YourClassName",
    request = "launch",
    type = "java"
  }
}

dap.adapters.coreclr = {
  type = 'executable',
  command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/netcoredbg/libexec/netcoredbg/netcoredbg',
  args = { '--interpreter=vscode' },
}

dap.adapters.java = function(callback)
  callback({
    type = 'server';
    host = '127.0.0.1';
    port = 5005;
  })
end

dap.listeners.after.event_initialized['dapui_config'] = function()
  dap_ui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
  dap_ui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
  dap_ui.close()
end

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

vim.fn.sign_define('DiagnosticSignError', { text = icons.Diagnostics.Error, texthl = 'red' })
vim.fn.sign_define('DiagnosticSignWarn', { text = icons.Diagnostics.Warn, texthl = 'yellow' })
vim.fn.sign_define('DiagnosticSignInfo', { text = icons.Diagnostics.Info, texthl = 'blue' })
vim.fn.sign_define('DiagnosticSignHint', { text = icons.Diagnostics.Hint, texthl = 'blue' })

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded'
  }
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = 'rounded'
  }
)

vim.diagnostic.config {
  virtual_text = false,
  float = {
    border = 'rounded',
  }
}

vim.notify = notify
