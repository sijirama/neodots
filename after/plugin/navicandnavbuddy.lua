-- show program scope
-- mostly smiteshes plugins

local navic = require("nvim-navic")

navic.setup {
    lsp = {
        auto_attach = true,
        preference = nil,
    },
    depth_limit = 0,
    depth_limit_indicator = "..",
}


local navbuddy = require("nvim-navbuddy")

navbuddy.setup {
    lsp = {
        auto_attach = true
    }
}


vim.keymap.set("n", "<leader>a", navbuddy.open);
