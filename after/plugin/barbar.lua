local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

local commander = require("commander")

commander.add({
    {
        desc = "Move to previous buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferPrevious<CR>",
        keys = { "n", "<Alt-,>" },
    },
    {
        desc = "Move to next buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferNext<CR>",
        keys = { "n", "<Alt-.>" },
    },
    {
        desc = "Re-order to previous buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferMovePrevious<CR>",
        keys = { "n", "<Alt-<>" },
    },
    {
        desc = "Re-order to next buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferMoveNext<CR>",
        keys = { "n", "<Alt->>" },
    },
    {
        desc = "Goto buffer 1 [Barbar | Tab]",
        cmd = "<Cmd>BufferGoto 1<CR>",
        keys = { "n", "<Alt-1>" },
    },
    {
        desc = "Goto buffer 2 [Barbar | Tab]",
        cmd = "<Cmd>BufferGoto 2<CR>",
        keys = { "n", "<Alt-2>" },
    },
    {
        desc = "Goto buffer 3 [Barbar | Tab]",
        cmd = "<Cmd>BufferGoto 3<CR>",
        keys = { "n", "<Alt-3>" },
    },
    {
        desc = "Goto last buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferLast<CR>",
        keys = { "n", "<Alt-0>" },
    },
    {
        desc = "Pin/unpin buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferPin<CR>",
        keys = { "n", "<Alt-p>" },
    },
    {
        desc = "Close buffer [Barbar | Tab]",
        cmd = "<Cmd>BufferClose<CR>",
        keys = { "n", "<Alt-c>" },
    },
    {
        desc = "Magic buffer-picking mode [Barbar | Tab]",
        cmd = "<Cmd>BufferPick<CR>",
        keys = { "n", "<C-p>" },
    },
    {
        desc = "Sort by buffer number [Barbar | Tab]",
        cmd = "<Cmd>BufferOrderByBufferNumber<CR>",
        keys = { "n", "<Space>bb" },
    },
    {
        desc = "Sort by name [Barbar | Tab]",
        cmd = "<Cmd>BufferOrderByName<CR>",
        keys = { "n", "<Space>bn" },
    },
    {
        desc = "Sort by directory [Barbar | Tab]",
        cmd = "<Cmd>BufferOrderByDirectory<CR>",
        keys = { "n", "<Space>bd" },
    },
    {
        desc = "Sort by language [Barbar | Tab]",
        cmd = "<Cmd>BufferOrderByLanguage<CR>",
        keys = { "n", "<Space>bl" },
    },
    {
        desc = "Sort by window number [Barbar | Tab]",
        cmd = "<Cmd>BufferOrderByWindowNumber<CR>",
        keys = { "n", "<Space>bw" },
    },
    -- {
    --     desc = "Goto buffer in position [Barbar | Tab]",
    --     cmd = "",
    --     keys = { "n", "<Alt-1>", "<Alt-2>", "<Alt-3>", "<Alt-4>", "<Alt-5>", "<Alt-6>", "<Alt-7>", "<Alt-8>", "<Alt-9>" },
    -- },
})
