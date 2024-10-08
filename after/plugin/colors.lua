--gruvbox colorscheme
vim.o.background = "dark" -- or "light" for light mode

--NOTE: transparent_mode
require("gruvbox").setup({
    transparent_mode = true,
})


vim.cmd([[colorscheme gruvbox]])
vim.cmd([[colorscheme everforest]])
vim.cmd([[colorscheme kanagawa]])
vim.cmd("colorscheme cyberdream")
vim.cmd([[colorscheme citruszest]])
vim.cmd([[colorscheme komau]])



-- NOTES: some cool colo
require("everforest").setup()


---Colorizer
require("colorizer").setup {
    filetypes = { "*" },
    user_default_options = {
        RGB = true,          -- #RGB hex codes
        RRGGBB = true,       -- #RRGGBB hex codes
        names = true,        -- "Name" codes like Blue or blue
        RRGGBBAA = true,     -- #RRGGBBAA hex codes
        AARRGGBB = true,     -- 0xAARRGGBB hex codes
        rgb_fn = false,      -- CSS rgb() and rgba() functions
        hsl_fn = false,      -- CSS hsl() and hsla() functions
        css = true,          -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false,      -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = true,                              -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = true, parsers = { css }, }, -- Enable sass colors
        virtualtext = "■",
    },
    -- all the sub-options of filetypes apply to buftypes
    buftypes = {},
}
