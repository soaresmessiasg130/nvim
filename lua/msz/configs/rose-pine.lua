local rose_pine = require("rose-pine")

rose_pine.setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
  variant = "main",
  --- @usage 'main'|'moon'|'dawn'
  dark_variant = "main",
  bold_vert_split = true,
  dim_nc_background = true,
  disable_background = true,
  disable_float_background = false,
  disable_italics = false,

  -- @usage string hex value or named color from rosepinetheme.com/palette
  groups = {
    background = "none",
    background_nc = "none",
    panel = "none",
    panel_nc = "none",
    border = "none",
    comment = "muted",
    link = "foam",
    punctuation = "text",

    error = "love",
    hint = "iris",
    info = "foam",
    warn = "gold",

    headings = {
      h1 = "iris",
      h2 = "foam",
      h3 = "rose",
      h4 = "gold",
      h5 = "pine",
      h6 = "foam",
    },
  },
  -- Change specific vim highlight groups
  -- https://github.com/rose-pine/neovim/wiki/Recipes
  -- highlight_groups = {},
})
