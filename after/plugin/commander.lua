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
        desc = "Open Commander.nvim",
        cmd = "<CMD>Telescope commander<CR>",
        keys = { "n", "<leader>fc" },
    },
})
