-- WARN: because i'm dumb as fuck, all this config settings are probably scattered and not well organized, siji is dumb as fuck, all of them were gotten from the lsp-zero

require('lsp-zero')

-- NOTE: set some lsps up
require('lspconfig').lua_ls.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').tsserver.setup({})
require('lspconfig').tailwindcss.setup({})


-- NOTE: cmp is dumb as fuck
local cmp = require('cmp')

-- NOTE: add lua snippets bro
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({

    completion = {
        --autocomplete = false  NOTE: the docs said that the autocomplete has tp be false, but its the even better when it is false to, to trigger the menu bar
    },

    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },

    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})
