vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local set = vim.keymap.set
local opts = { noremap = true , silent = true }

-- Modes
-- -- --   normal_mode = "n",
-- -- --   visual_mode = "v",
-- -- --   visual_block_mode = "x",
-- -- --   term_mode = "t",
-- -- --   command_mode = "c",

--NOTE: normal mode
set("n" , "<leader>pv" , vim.cmd.Ex )

--navigate buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)
map('n' , '<leader>q' , ':q<CR>' , opts)


--NOTE: visual mode
set('v' , "J" , ":m '>+1<CR>gv=gv ")
set('v' , "K" , ":m '<-2<CR>gv=gv ")


--NOTE: insert mode
map("i", "jk", "<ESC>", opts)
