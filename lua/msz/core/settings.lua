-- <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- tabs && indentation
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.breakindent = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.tagcase = "followscs"

-- cursor
vim.o.cursorline = true
vim.o.cursorbind = false
vim.o.guicursor =
	"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- appearance
vim.o.termguicolors = true
vim.o.signcolumn = "yes:2"
vim.o.syntax = "on"
vim.o.ruler = true

-- buffer
vim.o.title = true
vim.o.hidden = true

-- words
vim.opt.iskeyword:append("-")
vim.g.backspace = "indent,eol,start,nostop"
vim.o.clipboard = "unnamedplus"

-- split window
vim.o.splitright = true
vim.g.splitbellow = true
vim.o.splitkeep = "screen"
vim.o.startofline = true

-- navigation
vim.o.scrolloff = 3
vim.g.mouse = "a"

-- file
vim.o.swapfile = false
vim.g.encoding = "utf-8"

-- command bar
vim.g.wildmenu = true
vim.o.cmdheight = 0
vim.g.showcmd = false
vim.g.showcmdloc = "statusline"

-- edditing
vim.g.ttimeout = true
vim.g.ttimeoutlen = 50
vim.g.updatetime = 4000
vim.o.confirm = true

-- search
vim.g.showmatch = true
vim.g.incsearch = true

-- fold
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevel = 4

-- ai
vim.opt.laststatus = 3
