local neo_tree = require('neo-tree')

neo_tree.setup({
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  window = {
    position = "left",
    width = 35,
  },
  mapping_options = {
    noremap = true,
    nowait = true,
  },
  filesystem = {
    follow_current_file = false,
    use_libuv_file_watcher = true,
  },
  git_status = {
    use_libuv_file_watcher = true,
    window = {
      position = "float",
      mappings = {
        ["A"]  = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
      },
    },
  },
})

vim.cmd([[ nnoremap \ :Neotree reveal<cr> ]])
