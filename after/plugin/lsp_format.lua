require("lsp-format").setup {}

local on_attach = function(client)
    require("lsp-format").on_attach(client)

    -- ... custom code ...
end

require("lspconfig").clangd.setup { on_attach = on_attach }
require("lspconfig")["lua_language_server"].setup { on_attach = on_attach }
require("lspconfig").pyright.setup { on_attach = on_attach }
require("lspconfig")["lua_ls"].setup { on_attach = on_attach }
--require("lspconfig")[""].setup {on_attach = on_attach}
require("lspconfig").rust_analyzer.setup { on_attach = on_attach }
