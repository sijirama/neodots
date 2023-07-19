require("lsp-format").setup {
    sync = true
}

local on_attach = function(client)
    require("lsp-format").on_attach(client)
    -- ... custom code ...
end

require("lspconfig").clangd.setup { on_attach = on_attach, sync = true }
require("lspconfig").pyright.setup { on_attach = on_attach, sync = true }
require("lspconfig")["lua_ls"].setup { on_attach = on_attach, sync = false }
--require("lspconfig")[""].setup {on_attach = on_attach , sync = true}
require("lspconfig").rust_analyzer.setup { on_attach = on_attach, sync = true }
