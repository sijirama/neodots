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
set.iskeyword:append("-")
vim.o.clipboard = 'unnamedplus'

-- navigating panes easier
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
