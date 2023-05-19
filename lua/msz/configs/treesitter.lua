local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
  },
  text_objects = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "markdown",
    "tsx",
    "typescript",
    "javascript",
    "toml",
    "c_sharp",
    "json",
    "yaml",
    "rust",
    "css",
    "html",
    "lua",
    "bash",
  },
  rainbow = {
    enable = true,
    disable = { "html" },
    extended_mode = false,
    max_file_lines = nil,
  },
})
