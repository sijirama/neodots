require("hover").setup {
    init = function()
        -- Require providers
        require("hover.providers.lsp")
        require('hover.providers.gh')
        require('hover.providers.gh_user')
        -- require('hover.providers.jira')
        require('hover.providers.man')
        --require('hover.providers.dictionary')
    end,
    preview_opts = {
        border = nil
    },
    -- Whether the contents of a currently open hover window should be moved
    -- to a :h preview-window when pressing the hover keymap.
    preview_window = false,
    title = true
}

-- Setup keymaps
vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })

local commander = require("commander")
local hover = require("hover")

commander.add({
    {
        desc = "[hover.nvim] Show hover information",
        cmd = hover.hover,
        keys = { "n", "K" },
    },
    {
        desc = "[hover.nvim] Select hover information",
        cmd = hover.hover_select,
        keys = { "n", "gK" },
    },
})

local wk = require("which-key")

wk.register({
    ["<leader>"] = {
        h = {
            name = "hover.nvim",
            K = { "<cmd>lua require('hover').hover()<CR>", "Show hover information" },
            gK = { "<cmd>lua require('hover').hover_select()<CR>", "Select hover information" },
        },
    },
})
