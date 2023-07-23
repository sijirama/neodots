-- require("lsp-format").setup {
--     clangd = {
--         tab_width = 4
--     },
--     cpp = {
--         tab_width = 4
--     },
--     c = {
--         tab_width = 4
--     }
-- }
--

require("lsp-format").setup {
    clangd = {
        tab_width = function()
            return vim.opt.shiftwidth:get()
        end,
    },
}

local on_attach = function(client)
    require("lsp-format").on_attach(client)
    -- ... custom code ...
end

require("lspconfig").clangd.setup { on_attach = on_attach, sync = true, tab_width = 4 }
require("lspconfig").pyright.setup { on_attach = on_attach, sync = true }
require("lspconfig")["lua_ls"].setup { on_attach = on_attach, sync = false }
require("lspconfig").rust_analyzer.setup { on_attach = on_attach, sync = true }
--require("lspconfig")[""].setup { on_attach = on_attach, sync = true }
