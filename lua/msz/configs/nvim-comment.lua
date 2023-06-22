local nvim_comment = require("nvim_comment")

nvim_comment.setup({
  maker_padding = true,
  comment_empty = true,
  comment_empty_trim_whitespace = true,
  create_mappings = true,
  line_mapping = "gcc",
  operator_mapping = "gc",
  comment_chunk_text_object = "ic",
  hook = function()
    if vim.api.nvim_buf_get_option(0, "filetype") == "cs" then
      vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    end
  end,
})
