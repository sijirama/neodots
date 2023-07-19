local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-t>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)

----------------NOTE: add which key mapping reminder
local wk = require("which-key")

wk.register({
    ["<leader>"] = {
        -- Harpoon
        h = {
            name = "harpoon",
            a = { mark.add_file, "Add file to harpoon" },
            l = { ui.toggle_quick_menu, "Toggle quick menu" },
            r = { mark.rm_file, "Remove file from harpoon" },
        },
    },
})
