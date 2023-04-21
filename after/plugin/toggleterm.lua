require("toggleterm").setup{}


local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>t',":ToggleTerm direction=float dir=. <CR>", opts)






