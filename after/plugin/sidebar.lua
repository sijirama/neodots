require("sidebar-nvim").setup({
    disable_default_keybindings = 1,
    bindings = nil,
    open = false,
    side = "right",
    initial_width = 35,
    hide_statusline = false,
    update_interval = 1000,
    sections = { "datetime", "git", "diagnostics" },
    section_separator = { "", "-----", "" },
    section_title_separator = { "" },
    containers = {
        attach_shell = "/bin/sh", show_all = true, interval = 5000,
    },
    datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
    todos = { ignored_paths = { "~" } },
})

vim.keymap.set("n", "q", require("sidebar-nvim").toggle, { desc = "Sidebar" })


--NOTE: Side bar notes to remember
--[[
]]
