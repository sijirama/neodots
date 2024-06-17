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

local commander = require("commander")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

commander.add({
    {
        desc = "[harpoon] Add file to harpoon",
        cmd = mark.add_file,
        keys = { "n", "<leader>a" },
    },
    {
        desc = "[harpoon] Toggle quick menu",
        cmd = ui.toggle_quick_menu,
        keys = { "n", "<C-e>" },
    },
    {
        desc = "[harpoon] Navigate to previous file",
        cmd = function() ui.nav_file(1) end,
        keys = { "n", "<C-t>" },
    },
    {
        desc = "[harpoon] Navigate to next file",
        cmd = function() ui.nav_file(2) end,
        keys = { "n", "<C-h>" },
    },
    {
        desc = "[harpoon] Navigate to specific file",
        cmd = function() ui.nav_file(3) end,
        keys = { "n", "<C-n>" },
    },
})
