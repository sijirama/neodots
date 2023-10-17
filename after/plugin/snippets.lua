
require("luasnip").filetype_extend("javascript", { "javascriptreact" })
require("luasnip").filetype_extend("typescript", { "typescriptreact" })
require("luasnip").filetype_extend("javascript", { "next" })

require("luasnip.loaders.from_vscode").lazy_load()
