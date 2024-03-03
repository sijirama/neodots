local opts = { noremap = true, silent = true }

--vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
vim.keymap.set("n", "S-xx", "<cmd>TroubleToggle<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set('n', '<A-m>', ':TroubleToggle<CR>', opts)


