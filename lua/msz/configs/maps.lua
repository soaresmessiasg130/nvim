local telescopeBuiltin = require("telescope.builtin")

-- Telescope
MapFunction("n", "<leader>ff", telescopeBuiltin.find_files)
MapFunction("n", "<leader>fg", telescopeBuiltin.live_grep)
MapFunction("n", "<leader>fb", telescopeBuiltin.buffers)
MapFunction("n", "<leader>fh", telescopeBuiltin.help_tags)
MapFunction("n", "<leader>fs", telescopeBuiltin.git_status)
MapFunction("n", "<leader>fd", telescopeBuiltin.git_commits)
MapFunction("n", "<leader>fa", telescopeBuiltin.diagnostics)

-- Custom
MapFunction("n", "<C-s>", "<CMD>w<CR>")
MapFunction("n", "<leader><C-s>", "<CMD>wa<CR>")
MapFunction("n", "<C-z>", "<CMD>u<CR>")
MapFunction("n", "<leader>z", "<CMD>set wrap!<CR>")
MapFunction("i", "<C-s>", "<CMD>w<CR>")
MapFunction("i", "<C-z>", "<CMD>u<CR>")

-- DapUI
MapFunction("n", "<F5>", "<CMD>DapContinue<CR>")
MapFunction("n", "<F6>", "<CMD>DapStepInto<CR>")
MapFunction("n", "<F7>", "<CMD>DapStepOut<CR>")
MapFunction("n", "<F8>", "<CMD>DapStepOver<CR>")
MapFunction("n", "<F9>", "<CMD>DapTerminate<CR>")
MapFunction("n", "<F10>", "<CMD>DapToggleBreakpoint<CR>")

-- Windows
MapFunction("n", "<leader>]", "<CMD>vsplit<CR>")
MapFunction("n", "<leader>[", "<CMD>split<CR>")

-- NeoTree
MapFunction("n", "<leader>jj", "<CMD>Neotree toggle<CR>")
MapFunction("n", "<leader>ju", "<CMD>Neotree filesystem position=right<CR>")
MapFunction("n", "<leader>ji", "<CMD>Neotree buffers position=right<CR>")
MapFunction("n", "<leader>jo", "<CMD>Neotree git_status position=right<CR>")
MapFunction("n", "<leader>jp", "<CMD>Neotree document_symbols position=right<CR>")

-- Buffer
MapFunction("n", "<TAB>", "<CMD>bnext<CR>")
MapFunction("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
MapFunction("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
MapFunction("n", "<leader>tv", "<CMD>ToggleTerm size=40 direction=vertical<CR>")
MapFunction("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>")

-- Markdown Preview
MapFunction("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
MapFunction("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
MapFunction("n", "<C-h>", "<C-w>h")
MapFunction("n", "<C-l>", "<C-w>l")
MapFunction("n", "<C-k>", "<C-w>k")
MapFunction("n", "<C-j>", "<C-w>j")

-- Resize Window
MapFunction("n", "<C-Left>", "5<C-w><")
MapFunction("n", "<C-Right>", "5<C-w>>")
MapFunction("n", "<C-Up>", "2<C-w>+")
MapFunction("n", "<C-Down>", "2<C-w>-")

-- Gitsigns
MapFunction("n", "<leader>ni", "<CMD>Gitsigns preview_hunk<CR>")
MapFunction("n", "<leader>no", "<CMD>Gitsigns next_hunk<CR>")
MapFunction("n", "<leader>np", "<CMD>Gitsigns prev_hunk<CR>")

-- Move
MapFunction("n", "<A-j>", "<CMD>MoveLine(1)<CR>")
MapFunction("n", "<A-k>", "<CMD>MoveLine(-1)<CR>")
MapFunction("v", "<A-k>", "<CMD>MoveBlock(-1)<CR>")
MapFunction("v", "<A-j>", "<CMD>MoveBlock(1)<CR>")

-- Folding
MapFunction("n", "<leader>kp", "<CMD>foldclose<CR>")
MapFunction("n", "<leader>ko", "<CMD>foldopen<CR>")

-- Undotree
MapFunction("n", "<leader>ho", "<CMD>UndotreeToggle<CR>")

-- Bpytop
MapFunction('n', '<leader>lt', '<cmd>lua BpytopComponent()<CR>')

-- LazyGit
MapFunction('n', '<leader>lg', '<cmd>lua LazyGitComponent()<CR>')

-- LSP
local on_attach_buff = function (buff)
  MapBuffFunction(buff, "n", "<leader>lo", "<CMD>lua vim.lsp.buf.hover()<CR>")
  MapBuffFunction(buff, "n", "<leader>loo", "<CMD>lua vim.lsp.buf.signature_help()<CR>")
  MapBuffFunction(buff, "n", "<leader>li", "<CMD>lua vim.lsp.buf.definition()<CR>")
  MapBuffFunction(buff, "n", "<leader>lii", "<CMD>lua vim.lsp.buf.references()<CR>")
  MapBuffFunction(buff, "n", "<leader>lu", "<CMD>lua vim.lsp.diagnostic.on_diagnostic()<CR>")
  MapBuffFunction(buff, "n", "<leader>luu", "<CMD>lua vim.diagnostic.open_float(nil, { focus = false })<CR>")
  MapBuffFunction(buff, "n", "<leader>lyy", "<CMD>lua vim.lsp.buf.format({ async = false })<CR>")
  MapBuffFunction(buff, "n", "<leader>ly", "<CMD>lua vim.lsp.buf.rename()<CR>")
  MapBuffFunction(buff, "n", "<leader>lp", "<CMD>lua vim.lsp.buf.code_action()<CR>")
  MapFunction('n', '<leader>lpp', '<CMD>Trouble toggle lsp win.position=right<CR>')
end

return {
  on_attach_buff = on_attach_buff
}
