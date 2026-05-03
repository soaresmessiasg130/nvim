local telescopeBuiltin = require("telescope.builtin")

-- Telescope
MapFunction("n", "<leader>ff", telescopeBuiltin.find_files, "Find Files")
MapFunction("n", "<leader>fg", telescopeBuiltin.live_grep, "Live Grep")
MapFunction("n", "<leader>fb", telescopeBuiltin.buffers, "Buffers")
MapFunction("n", "<leader>fh", telescopeBuiltin.help_tags, "Help Tags")
MapFunction("n", "<leader>fs", telescopeBuiltin.git_status, "Git Status")
MapFunction("n", "<leader>fd", telescopeBuiltin.git_commits, "Git Commits")
MapFunction("n", "<leader>fa", telescopeBuiltin.diagnostics, "Diagnostics")

-- Custom
MapFunction("n", "<C-s>", "<CMD>w<CR>", "Save")
MapFunction("n", "<leader><C-s>", "<CMD>wa<CR>", "Save All")
MapFunction("n", "<C-z>", "<CMD>u<CR>", "Undo")
MapFunction("n", "<leader>z", "<CMD>set wrap!<CR>", "Toggle Wrap")
MapFunction("i", "<C-s>", "<CMD>w<CR>", "Save")
MapFunction("i", "<C-z>", "<CMD>u<CR>", "Undo")

-- DapUI
MapFunction("n", "<F5>", "<CMD>DapContinue<CR>", "DAP Continue")
MapFunction("n", "<F6>", "<CMD>DapStepInto<CR>", "DAP Step Into")
MapFunction("n", "<F7>", "<CMD>DapStepOut<CR>", "DAP Step Out")
MapFunction("n", "<F8>", "<CMD>DapStepOver<CR>", "DAP Step Over")
MapFunction("n", "<F9>", "<CMD>DapTerminate<CR>", "DAP Terminate")
MapFunction("n", "<F10>", "<CMD>DapToggleBreakpoint<CR>", "DAP Toggle Breakpoint")

-- Windows
MapFunction("n", "<leader>]", "<CMD>vsplit<CR>", "Vertical Split")
MapFunction("n", "<leader>[", "<CMD>split<CR>", "Horizontal Split")

-- NeoTree
MapFunction("n", "<leader>jj", "<CMD>Neotree toggle<CR>", "Toggle Neotree")
MapFunction("n", "<leader>ju", "<CMD>Neotree filesystem position=right<CR>", "Neotree Filesystem")
MapFunction("n", "<leader>ji", "<CMD>Neotree buffers position=right<CR>", "Neotree Buffers")
MapFunction("n", "<leader>jo", "<CMD>Neotree git_status position=right<CR>", "Neotree Git Status")
MapFunction("n", "<leader>jp", "<CMD>Neotree document_symbols position=right<CR>", "Neotree Symbols")

-- Buffer
MapFunction("n", "<TAB>", "<CMD>bnext<CR>")
MapFunction("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
MapFunction("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>", "Terminal Horizontal")
MapFunction("n", "<leader>tv", "<CMD>ToggleTerm size=40 direction=vertical<CR>", "Terminal Vertical")
MapFunction("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", "Terminal Float")

-- Window Navigation
MapFunction("n", "<C-h>", "<C-w>h", "Move Left")
MapFunction("n", "<C-l>", "<C-w>l", "Move Right")
MapFunction("n", "<C-k>", "<C-w>k", "Move Up")
MapFunction("n", "<C-j>", "<C-w>j", "Move Down")

-- Resize Window
MapFunction("n", "<C-Left>", "5<C-w><", "Resize Left")
MapFunction("n", "<C-Right>", "5<C-w>>", "Resize Right")
MapFunction("n", "<C-Up>", "2<C-w>+", "Resize Up")
MapFunction("n", "<C-Down>", "2<C-w>-", "Resize Down")

-- Gitsigns
MapFunction("n", "<leader>ni", "<CMD>Gitsigns preview_hunk<CR>", "Preview Hunk")
MapFunction("n", "<leader>no", "<CMD>Gitsigns next_hunk<CR>", "Next Hunk")
MapFunction("n", "<leader>np", "<CMD>Gitsigns prev_hunk<CR>", "Prev Hunk")

-- Move
MapFunction("n", "<A-j>", "<CMD>MoveLine(1)<CR>", "Move Line Down")
MapFunction("n", "<A-k>", "<CMD>MoveLine(-1)<CR>", "Move Line Up")
MapFunction("v", "<A-k>", "<CMD>MoveBlock(-1)<CR>", "Move Block Up")
MapFunction("v", "<A-j>", "<CMD>MoveBlock(1)<CR>", "Move Block Down")

-- Folding
MapFunction("n", "<leader>kp", "<CMD>foldclose<CR>", "Fold Close")
MapFunction("n", "<leader>ko", "<CMD>foldopen<CR>", "Fold Open")

-- Undotree
MapFunction("n", "<leader>ho", "<CMD>UndotreeToggle<CR>", "Toggle Undotree")

-- Bpytop
MapFunction("n", "<leader>lt", "<cmd>lua BpytopComponent()<CR>", "Bpytop")

-- LazyGit
MapFunction("n", "<leader>lg", "<cmd>lua LazyGitComponent()<CR>", "LazyGit")

-- LSP
local on_attach_buff = function(buff)
	MapBuffFunction(buff, "n", "<leader>lo", "<CMD>lua vim.lsp.buf.hover()<CR>", "Hover")
	MapBuffFunction(buff, "n", "<leader>loo", "<CMD>lua vim.lsp.buf.signature_help()<CR>", "Signature Help")
	MapBuffFunction(buff, "n", "<leader>li", "<CMD>lua vim.lsp.buf.definition()<CR>", "Definition")
	MapBuffFunction(buff, "n", "<leader>lii", "<CMD>lua vim.lsp.buf.references()<CR>", "References")
	MapBuffFunction(buff, "n", "<leader>lu", "<CMD>lua vim.lsp.diagnostic.on_diagnostic()<CR>", "On Diagnostic")
	MapBuffFunction(buff, "n", "<leader>luu", "<CMD>lua vim.diagnostic.open_float(nil, { focus = false })<CR>", "Open Float")
	MapBuffFunction(buff, "n", "<leader>lyy", "<CMD>lua vim.lsp.buf.format({ async = false })<CR>", "Format")
	MapBuffFunction(buff, "n", "<leader>ly", "<CMD>lua vim.lsp.buf.rename()<CR>", "Rename")
	MapBuffFunction(buff, "n", "<leader>lp", "<CMD>lua vim.lsp.buf.code_action()<CR>", "Code Action")
	MapFunction("n", "<leader>lpp", "<CMD>Trouble toggle lsp win.position=right<CR>", "Trouble LSP")
end

return {
	on_attach_buff = on_attach_buff,
}
