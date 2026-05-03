-- Custom
MapFunction("n", "<C-s>", "<CMD>w<CR>", "Save")
MapFunction("n", "<leader><C-s>", "<CMD>wa<CR>", "Save All")
MapFunction("n", "<C-z>", "<CMD>u<CR>", "Undo")
MapFunction("n", "<leader>z", "<CMD>set wrap!<CR>", "Toggle Wrap")
MapFunction("i", "<C-s>", "<CMD>w<CR>", "Save")
MapFunction("i", "<C-z>", "<CMD>u<CR>", "Undo")
MapFunction("n", "<leader>]", "<CMD>vsplit<CR>", "Vertical Split")
MapFunction("n", "<leader>[", "<CMD>split<CR>", "Horizontal Split")

-- Buffer
MapFunction("n", "<TAB>", "<CMD>bnext<CR>")
MapFunction("n", "<S-TAB>", "<CMD>bprevious<CR>")

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
	MapBuffFunction(
		buff,
		"n",
		"<leader>luu",
		"<CMD>lua vim.diagnostic.open_float(nil, { focus = false })<CR>",
		"Open Float"
	)
	MapBuffFunction(buff, "n", "<leader>lyy", "<CMD>lua vim.lsp.buf.format({ async = false })<CR>", "Format")
	MapBuffFunction(buff, "n", "<leader>ly", "<CMD>lua vim.lsp.buf.rename()<CR>", "Rename")
	MapBuffFunction(buff, "n", "<leader>lp", "<CMD>lua vim.lsp.buf.code_action()<CR>", "Code Action")
	MapFunction("n", "<leader>lpp", "<CMD>Trouble toggle lsp win.position=right<CR>", "Trouble LSP")
end

return {
	on_attach_buff = on_attach_buff,
}
