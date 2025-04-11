local function M(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  local opts = {
    noremap = true,
    silent = true,
  }

  buf_set_keymap("n", "<leader>lo", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "<leader>loo", "<CMD>lua vim.lsp.buf.signature_help()<CR>", opts)

  buf_set_keymap("n", "<leader>li", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "<leader>lii", "<CMD>lua vim.lsp.buf.references()<CR>", opts)

  buf_set_keymap("n", "<leader>lu", "<CMD>lua vim.lsp.diagnostic.on_diagnostic()<CR>", opts)
  buf_set_keymap("n", "<leader>luu", "<CMD>lua vim.diagnostic.open_float(nil, { focus = false })<CR>", opts)

  buf_set_keymap("n", "<leader>lyy", "<CMD>lua vim.lsp.buf.format({ async = false })<CR>", opts)
  buf_set_keymap("n", "<leader>ly", "<CMD>lua vim.lsp.buf.rename()<CR>", opts)

  buf_set_keymap("n", "<leader>lp", "<CMD>lua vim.lsp.buf.code_action()<CR>", opts)

  if client.server_capabilities.documentFormattingProvider then
    if client.name == "eslint" or client.name == "typescript-tools" then
      vim.api.nvim_create_autocmd("BufWritePre", {
        command = "EslintFixAll",
        buffer = bufnr,
      })
    else
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("Format", { clear = true }),
        buffer = bufnr,
        callback = function() vim.lsp.buf.format() end,
      })
    end
  end
end

return M
