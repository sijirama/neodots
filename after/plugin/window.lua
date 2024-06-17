local function cmd(command)
    return table.concat({ '<Cmd>', command, '<CR>' })
end


vim.keymap.set('n', '<C-w>z', cmd 'WindowsMaximize')
vim.keymap.set('n', '<C-w>_', cmd 'WindowsMaximizeVertically')
vim.keymap.set('n', '<C-w>|', cmd 'WindowsMaximizeHorizontally')
vim.keymap.set('n', '<C-w>=', cmd 'WindowsEqualize')

local commander = require("commander")

commander.add({
    {
        desc = "Maximize current window",
        cmd = "<Cmd>WindowsMaximize<CR>",
        keys = { "n", "<C-w>z" },
    },
    {
        desc = "Maximize current window vertically",
        cmd = "<Cmd>WindowsMaximizeVertically<CR>",
        keys = { "n", "<C-w>_" },
    },
    {
        desc = "Maximize current window horizontally",
        cmd = "<Cmd>WindowsMaximizeHorizontally<CR>",
        keys = { "n", "<C-w>|" },
    },
    {
        desc = "Equalize window sizes",
        cmd = "<Cmd>WindowsEqualize<CR>",
        keys = { "n", "<C-w>=" },
    },
})


local wk = require("which-key")

wk.register({
    ["<C-w>"] = {
        z = { "<cmd>WindowsMaximize<CR>", "Maximize current window" },
        _ = { "<cmd>WindowsMaximizeVertically<CR>", "Maximize current window vertically" },
        ["|"] = { "<cmd>WindowsMaximizeHorizontally<CR>", "Maximize current window horizontally" },
        ["="] = { "<cmd>WindowsEqualize<CR>", "Equalize window sizes" },
    },
})
