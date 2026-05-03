return {
  {
    'echasnovski/mini.surround',
    version = '*',
    opts = {
      mappings = {
        add = 'gsa',            -- Add surrounding in Normal and Visual modes
        delete = 'gsd',         -- Delete surrounding
        find = 'gsf',           -- Find surrounding (to the right)
        find_left = 'gsF',      -- Find surrounding (to the left)
        highlight = 'gsh',      -- Highlight surrounding
        replace = 'gsr',        -- Replace surrounding
        update_n_lines = 'gsn', -- Update `n_lines`
      },
    },
    keys = {
      { "gsa", desc = "Add Surrounding", mode = { "n", "v" } },
      { "gsd", desc = "Delete Surrounding" },
      { "gsf", desc = "Find Surrounding (Right)" },
      { "gsF", desc = "Find Surrounding (Left)" },
      { "gsh", desc = "Highlight Surrounding" },
      { "gsr", desc = "Replace Surrounding" },
      { "gsn", desc = "Update Surrounding Lines" },
    },
  },
}
