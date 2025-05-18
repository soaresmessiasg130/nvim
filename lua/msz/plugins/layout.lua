local icons = require('msz.assets.icons')

local mainSeparator = {
  left = icons.Circle.LeftHalf,
  right = icons.Circle.RightHalf,
}

local leftSeparator = {
  left = icons.Circle.LeftHalf,
}

local rightSeparator = {
  right = icons.Circle.RightHalf,
}

local function macro_recording()
  local recorded = vim.fn.reg_recorded()
  local recording = vim.fn.reg_recording()

  if recording ~= '' then
    recording = icons.Circle.Big .. ' @' .. recording
  end

  if recorded ~= '' then
    recorded = icons.Action.Select .. ' @' .. recorded
  end

  return recorded .. ' ' .. recording
end

return {
  { 'stevearc/dressing.nvim' },
  {
    'rcarriga/nvim-notify',
    opts = {
      render = 'wrapped-compact',
      stages = "fade_in_slide_out",
      background_colour = '#000000',
      fps = 60,
      timeout = 2000,
      top_down = false,
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    event = 'BufEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      tabline = {
        lualine_a = {
          {
            'buffers',
            separator = mainSeparator,
          }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = { 'diagnostics' },
        lualine_y = {
          {
            'diff',
            separator = leftSeparator,
          }
        },
        lualine_z = {
          {
            'branch',
            separator = mainSeparator
          }
        },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            separator = mainSeparator,
          }
        },
        lualine_b = {
          { 'selectioncount' },
          { 'searchcount' },
          { 'progress' },
          {
            'location',
            separator = rightSeparator,
          },
        },
        lualine_c = {
          {
            'macro_recording',
            fmt = macro_recording,
          },
        },
        lualine_x = {},
        lualine_y = {
          {
            'filetype',
            separator = leftSeparator,
          },
          'encoding',
          {
            'fileformat',
            separator = rightSeparator,
          },
        },
        lualine_z = {},
      },
      -- extensions = {
      --   'quickfix',
      --   'aerial',
      --   'chadtree',
      --   'ctrlspace',
      --   'fern',
      --   'fugitive',
      --   'fzf',
      --   'lazy',
      --   'man',
      --   'mason',
      --   'mundo',
      --   'neo-tree',
      --   'nerdtree',
      --   'nvim-dap-ui',
      --   'nvim-tree',
      --   'oil',
      --   'overseer',
      --   'quickfix',
      --   'symbols-outline',
      --   'toggleterm',
      --   'trouble',
      -- },
    },
  },
}
