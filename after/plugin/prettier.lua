require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        -- Conform will run the first available formatter
        javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    -- If this is set, Conform will run the formatter on save.
    -- It will pass the table to conform.format().
    -- This can also be a function that returns the table.

    format_on_save = {
        -- I recommend these options. See :help conform.format for details.
        lsp_format = "fallback",
        timeout_ms = 500,
    },
    -- Conform will notify you when a formatter errors
    notify_on_error = true,
    -- Conform will notify you when no formatters are available for the buffer
    notify_no_formatters = true,
})



























-- local null_ls = require("null-ls")
--
-- local async = event == "BufWritePost"
-- local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
--
-- local event = "BufWritePost" -- or "BufWritePost"
--
-- null_ls.setup({
--     on_attach = function(client, bufnr)
--         if client.supports_method("textDocument/formatting") then
--             vim.keymap.set("n", "<Leader>f", function()
--                 vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
--             end, { buffer = bufnr, desc = "[lsp] format" })
--         end
--         if client.supports_method("textDocument/rangeFormatting") then
--             vim.keymap.set("x", "<Leader>f", function()
--                 vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
--             end, { buffer = bufnr, desc = "[lsp] format" })
--         end
--     end,
-- })
--
--
-- local prettier = require("prettier")
-- prettier.setup({
--     bin = 'prettier', -- or `'prettierd'` (v0.22+)
--     filetypes = {
--         "css",
--         "graphql",
--         "html",
--         "javascript",
--         "javascriptreact",
--         "json",
--         "less",
--         "markdown",
--         "scss",
--         "typescript",
--         "typescriptreact",
--         "yaml",
--     },
--
--     --NOTE: this works when there isnt any existing prettier file
--     cli_options = {
--         arrow_parens = "always",
--         bracket_spacing = true,
--         bracket_same_line = false,
--         embedded_language_formatting = "auto",
--         end_of_line = "lf",
--         html_whitespace_sensitivity = "css",
--         -- jsx_bracket_same_line = false,
--         jsx_single_quote = false,
--         print_width = 80,
--         prose_wrap = "preserve",
--         quote_props = "as-needed",
--         semi = true,
--         single_attribute_per_line = false,
--         single_quote = false,
--         tab_width = 2,
--         trailing_comma = "es5",
--         use_tabs = false,
--         vue_indent_script_and_style = false,
--     },
-- })
