require("commander").setup({
    components = {
        "DESC",
        "KEYS",
        "CAT",
    },
    sort_by = {
        "DESC",
        "KEYS",
        "CAT",
        "CMD"
    },
    integration = {
        telescope = {
            enable = true,
        },
        lazy = {
            enable = true,
            set_plugin_name_as_cat = true
        }
    }
})

local commander = require("commander")


commander.add({
    {
        desc = "Search inside current buffer using Telescope",
        cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
        keys = { "n", "<leader>fl" },
    },
    {
        desc = "Find files using Telescope",
        cmd = "<CMD>Telescope find_files<CR>",
        keys = { "n", "<leader>ff" },
    },
    {
        desc = "Live grep using Telescope",
        cmd = "<CMD>Telescope live_grep<CR>",
        keys = { "n", "<leader>fg" },
    },
    {
        desc = "Find files in Git repository using Telescope",
        cmd = "<CMD>Telescope git_files<CR>",
        keys = { "n", "<C-p>" },
    },
    {
        desc = "Search for a string in files using Telescope",
        cmd = "<CMD>lua builtin.grep_string({ search = vim.fn.input('Grep > ') })<CR>",
        keys = { "n", "<leader>ps" },
    }
})
