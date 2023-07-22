-- require('lualine').setup({
--     options = { theme = 'auto' },
--     sections = { lualine_c = { 'lsp_progress' }, lualine_x = { 'tabnine' } }
-- })

require('lualine').setup({
    options = { theme = 'auto', component_separators = "|", section_separators = { left = "", right = "" }, },
    sections = {
        lualine_a = {
            { "mode", separator = { left = "" }, right_padding = 2 },
        },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { 'lsp_progress' },
        lualine_x = { "filetype" },
        lualine_y = { "filename" },
        lualine_z = { 'tabnine' },
    }
})
