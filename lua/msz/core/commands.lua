-- providers
vim.cmd([[
  let g:loaded_perl_provider = 0
]])

-- colorscheme
vim.cmd([[
  colorscheme catppuccin
]])

-- completions
vim.cmd([[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]])
