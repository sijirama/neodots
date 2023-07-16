local set = vim.opt

--let NERDTreeShowHidden=0
vim.opt.termguicolors = true
set.number = true
set.relativenumber = true
set.autoindent = true
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.wrap = true
set.hlsearch = false
set.incsearch = true
set.scrolloff = 7
set.cursorline = true


vim.notify = require("notify")
