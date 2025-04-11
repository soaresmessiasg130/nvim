local global = vim.g
local o = vim.o

-- <leader>
global.mapleader = ' '
global.maplocalleader = ' '

-- line numbers
o.number = true
o.relativenumber = true

-- tabs && indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.breakindent = true

-- search
o.ignorecase = true
o.smartcase = true
o.tagcase = 'followscs'

-- cursor
o.cursorline = true
o.cursorbind = false
o.guicursor =
'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'

-- appearance
o.termguicolors = true
o.signcolumn = 'yes:2'
o.syntax = 'on'
o.ruler = true

-- buffer
o.title = true
o.hidden = true

-- words
vim.opt.iskeyword:append('-')
global.backspace = 'indent,eol,start,nostop'
o.clipboard = 'unnamedplus'

-- split window
o.splitright = true
global.splitbellow = true
o.splitkeep = 'screen'
o.startofline = true

-- navigation
o.scrolloff = 3
global.mouse = 'a'

-- file
o.swapfile = false
global.encoding = 'utf-8'

-- command bar
global.wildmenu = true
o.cmdheight = 0
global.showcmd = false
global.showcmdloc = 'statusline'

-- edditing
global.ttimeout = true
global.ttimeoutlen = 50
global.updatetime = 4000
o.confirm = true

-- search
global.showmatch = true
global.incsearch = true

-- fold
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldlevel = 4
