local function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local status, telescope = pcall(require, "telescope.builtin")

if status then
  map("n", "<leader>ff", telescope.find_files)
  map("n", "<leader>fg", telescope.live_grep)
  map("n", "<leader>fb", telescope.buffers)
  map("n", "<leader>fh", telescope.help_tags)
  map("n", "<leader>fs", telescope.git_status)
  map("n", "<leader>fc", telescope.git_commits)
else
  print("Telescope not found")
end

-- Custom
map("n", "<C-s>", "<CMD>w<CR>")
map("n", "<leader><C-s>", "<CMD>wa<CR>")
map("n", "<C-z>", "<CMD>u<CR>")
map("n", "<leader>z", "<CMD>set wrap!<CR>")

map("i", "<C-s>", "<CMD>w<CR>")
map("i", "<C-z>", "<CMD>u<CR>")

-- DapUI
map("n", "<F5>", "<CMD>DapContinue<CR>")
map("n", "<F6>", "<CMD>DapStepInto<CR>")
map("n", "<F7>", "<CMD>DapStepOut<CR>")
map("n", "<F8>", "<CMD>DapStepOver<CR>")
map("n", "<F9>", "<CMD>DapTerminate<CR>")
map("n", "<leader>b", "<CMD>DapToggleBreakpoint<CR>")

-- Windows
map("n", "<leader>]", "<CMD>vsplit<CR>")
map("n", "<leader>[", "<CMD>split<CR>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")
map("n", "<leader>gs", "<CMD>Neotree toggle right git_status<CR>")

-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "<leader>th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("n", "<leader>tv", "<CMD>ToggleTerm size=40 direction=vertical<CR>")
map("n", "<leader>tt", "<CMD>ToggleTermToggleAll<CR>")

-- Markdown Preview
map("n", "<leader>m", "<CMD>MarkdownPreview<CR>")
map("n", "<leader>mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Undotree
map("n", "<leader>u", "<CMD>UndotreeToggle<CR>")

-- Comment
map("n", "<C-_>", "<CMD>CommentToggle<CR>")
