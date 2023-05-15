local global = vim.g
local o = vim.o

-- <leader>
global.mapleader = " "
global.maplocalleader = " "

-- line numbers
o.number = true
o.relativenumber = true

-- tabs && indentation
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true

-- line wrapping
o.ignorecase = true
o.smartcase = true

-- cursor line
o.cursorline = true

-- appearance
o.termguicolors = true
o.signcolumn = "yes"
o.syntax = "on"
o.ruler = true
o.title = true
o.hidden = true
vim.opt.iskeyword:append("-")

-- backspace
o.backspace = "indent,eol,start"

-- clipboard
o.clipboard = "unnamedplus"

-- split windows
o.splitright = true
o.splitbelow = true
o.inccommand = "split"

-- others
o.scrolloff = 3
o.swapfile = false
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.termencoding = "utf-8"
o.mouse = "a"
o.wildmenu = true
o.showcmd = true
o.ttimeoutlen = 0
o.updatetime = 300
o.showmatch = true
o.incsearch = false
