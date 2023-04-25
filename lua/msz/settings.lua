local g = vim.g
local o = vim.o

-- <leader>
g.mapleader = " "
g.maplocalleader = " "
g.editorconfig = true

-- line numbers
o.number = true
o.relativenumber = true

-- guicursor
o.guicursor = ""

-- tabs && indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.smartindent = true

-- line wrapping
o.ignorecase = true
o.smartcase = true
o.wrap = true

-- cursor line
o.cursorline = true

-- appearance
o.termguicolors = true
o.signcolumn = "yes"
o.syntax = "on"
o.ruler = true
o.title = true
o.hidden = true
o.iskeyword = "-"

-- search
o.hlsearch = false
o.incsearch = true

-- scroll
o.scrolloff = 8

-- backspace
o.backspace = "indent,eol,start"

-- clipboard
o.clipboard = "unnamedplus"

-- split windows
o.splitright = true
o.splitbelow = true
o.inccommand = "split"

-- others
o.swapfile = false
o.backup = false
o.fileformat = "unix"
o.encoding = "UTF-8"
o.mouse = "a"
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.updatetime = 50
o.colorcolumn = 80
