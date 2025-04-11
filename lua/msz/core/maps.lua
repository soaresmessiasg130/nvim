local mapFunctions = require('msz.functions.map')
-- local telescope = require("telescope")
local telescopeBuiltin = require("telescope.builtin")
local keymaps = require('msz.assets.keymaps')

-- Telescope
mapFunctions.map("n", "<leader>ff", telescopeBuiltin.find_files)
mapFunctions.map("n", "<leader>fg", telescopeBuiltin.live_grep)
mapFunctions.map("n", "<leader>fb", telescopeBuiltin.buffers)
mapFunctions.map("n", "<leader>fh", telescopeBuiltin.help_tags)
mapFunctions.map("n", "<leader>fs", telescopeBuiltin.git_status)
mapFunctions.map("n", "<leader>fd", telescopeBuiltin.git_commits)
mapFunctions.map("n", "<leader>fa", telescopeBuiltin.diagnostics)
-- mapFunctions.map("n", "<leader>fv", telescope.extensions.flutter.commands)

-- Custom
mapFunctions.map("n", "<C-s>", "<CMD>w<CR>")
mapFunctions.map("n", "<leader><C-s>", "<CMD>wa<CR>")
mapFunctions.map("n", "<C-z>", "<CMD>u<CR>")
mapFunctions.map("n", "<leader>z", "<CMD>set wrap!<CR>")
mapFunctions.map("i", "<C-s>", "<CMD>w<CR>")
mapFunctions.map("i", "<C-z>", "<CMD>u<CR>")

-- LSP
mapFunctions.map('n', keymaps.LSP_TROUBLE, '<CMD>Trouble toggle lsp win.position=right<CR>')

-- DapUI
mapFunctions.map("n", "<F5>", "<CMD>DapContinue<CR>")
mapFunctions.map("n", "<F6>", "<CMD>DapStepInto<CR>")
mapFunctions.map("n", "<F7>", "<CMD>DapStepOut<CR>")
mapFunctions.map("n", "<F8>", "<CMD>DapStepOver<CR>")
mapFunctions.map("n", "<F9>", "<CMD>DapTerminate<CR>")
mapFunctions.map("n", "<F10>", "<CMD>DapToggleBreakpoint<CR>")

-- Windows
mapFunctions.map("n", "<leader>]", "<CMD>vsplit<CR>")
mapFunctions.map("n", "<leader>[", "<CMD>split<CR>")

-- NeoTree
mapFunctions.map("n", "<leader>jj", "<CMD>Neotree toggle<CR>")
mapFunctions.map("n", "<leader>ju", "<CMD>Neotree filesystem position=right<CR>")
mapFunctions.map("n", "<leader>ji", "<CMD>Neotree buffers position=right<CR>")
mapFunctions.map("n", "<leader>jo", "<CMD>Neotree git_status position=right<CR>")
mapFunctions.map("n", "<leader>jp", "<CMD>Neotree document_symbols position=right<CR>")

-- Buffer
mapFunctions.map("n", "<TAB>", "<CMD>bnext<CR>")
mapFunctions.map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
mapFunctions.map("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
mapFunctions.map("n", "<leader>tv", "<CMD>ToggleTerm size=40 direction=vertical<CR>")
mapFunctions.map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>")

-- Markdown Preview
mapFunctions.map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
mapFunctions.map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
mapFunctions.map("n", "<C-h>", "<C-w>h")
mapFunctions.map("n", "<C-l>", "<C-w>l")
mapFunctions.map("n", "<C-k>", "<C-w>k")
mapFunctions.map("n", "<C-j>", "<C-w>j")

-- Resize Window
mapFunctions.map("n", "<C-Left>", "5<C-w><")
mapFunctions.map("n", "<C-Right>", "5<C-w>>")
mapFunctions.map("n", "<C-Up>", "2<C-w>+")
mapFunctions.map("n", "<C-Down>", "2<C-w>-")

-- Gitsigns
mapFunctions.map("n", keymaps.PREVIEW_HUNK, "<CMD>Gitsigns preview_hunk<CR>")
mapFunctions.map("n", keymaps.NEXT_HUNK, "<CMD>Gitsigns next_hunk<CR>")
mapFunctions.map("n", keymaps.PREV_HUNK, "<CMD>Gitsigns prev_hunk<CR>")

-- Move
mapFunctions.map("n", "<A-j>", "<CMD>MoveLine(1)<CR>")
mapFunctions.map("n", "<A-k>", "<CMD>MoveLine(-1)<CR>")
mapFunctions.map("v", "<A-k>", "<CMD>MoveBlock(-1)<CR>")
mapFunctions.map("v", "<A-j>", "<CMD>MoveBlock(1)<CR>")

-- Folding
mapFunctions.map("n", "<leader>kp", "<CMD>foldclose<CR>")
mapFunctions.map("n", "<leader>ko", "<CMD>foldopen<CR>")

-- Undotree
mapFunctions.map("n", "<leader>ho", "<CMD>UndotreeToggle<CR>")
