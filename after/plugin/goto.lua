require('goto-preview').setup {
    width = 120, -- Width of the floating window
    height = 15, -- Height of the floating window
    border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" }, -- Border characters of the floating window
    default_mappings = true, -- Bind default mappings
    debug = false, -- Print debug information
    opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent.
    resizing_mappings = false, -- Binds arrow keys to resizing the floating window.
    post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
    references = { -- Configure the telescope UI for slowing the references cycling window.
        telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
    },
    -- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
    focus_on_open = true,                                         -- Focus the floating window when opening it.
    dismiss_on_move = false,                                      -- Dismiss the floating window when moving the cursor.
    force_close = true,                                           -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
    bufhidden = "wipe",                                           -- the bufhidden option to set on the floating window. See :h bufhidden
    stack_floating_preview_windows = true,                        -- Whether to nest floating windows
    preview_window_title = { enable = true, position = "right" }, -- Whether to set the preview window title as the filename
}

---- i'm contemplating on either whichkey or commander

local wk = require("which-key")

wk.register({
    ["<leader>"] = {
        -- Harpoon
        g = {
            name = "Go to preview",
            d = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", "Preview definition " },
            t = { "<cmd>lua require('goto-preview').goto_preview_type__definition()<CR>", "Preview type definition" },
            i = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", "Preview implementation" },
            r = { "<cmd>lua require('goto-preview').goto_preview_references<CR>", "Preview references" },
            P = { "<cmd>lua require('goto-preview').close_all_win()<CR>", "Close all windows" },
        },
    },
})

local commander = require("commander")

commander.add({
    {
        desc = "[goto-preview] Preview definition",
        cmd = "<CMD>lua require('goto-preview').goto_preview_definition()<CR>",
        keys = { "n", "<leader>gd" },
    },
    {
        desc = "[goto-preview] Preview type definition",
        cmd = "<CMD>lua require('goto-preview').goto_preview_type__definition()<CR>",
        keys = { "n", "<leader>gt" },
    },
    {
        desc = "[goto-preview] Preview implementation",
        cmd = "<CMD>lua require('goto-preview').goto_preview_implementation()<CR>",
        keys = { "n", "<leader>gi" },
    },
    {
        desc = "[goto-preview] Preview references",
        cmd = "<CMD>lua require('goto-preview').goto_preview_references()<CR>",
        keys = { "n", "<leader>gr" },
    },
    {
        desc = "[goto-preview] Close all windows",
        cmd = "<CMD>lua require('goto-preview').close_all_win()<CR>",
        keys = { "n", "<leader>gP" },
    },
})
