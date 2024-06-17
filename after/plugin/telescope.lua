local builtin = require('telescope.builtin')

local opts = { noremap = true, silent = true }

--PERF: Normal-mode commands
vim.keymap.set('n', '<leader>fl', ':Telescope current_buffer_fuzzy_find<CR>', opts)
vim.keymap.set('n', '<leader>fc', ':Telescope commander<CR>', opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            ".git",
            "dist"
        }
    }
}

local commander = require("commander")

commander.add({
    {
        desc = "[Telescope] Search inside current buffer",
        cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
        keys = { "n", "<leader>fl" },
    },
    {
        desc = "[Telescope] List open buffers",
        cmd = "<CMD>lua require('telescope.builtin').buffers()<CR>",
        keys = { "n", "<leader>fb" },
    },
    {
        desc = "[Telescope] Show help tags",
        cmd = "<CMD>lua require('telescope.builtin').help_tags()<CR>",
        keys = { "n", "<leader>fh" },
    },
    {
        desc = "[Telescope] Find files",
        cmd = "<CMD>Telescope find_files<CR>",
        keys = { "n", "<leader>ff" },
    },
    {
        desc = "[Telescope] Live grep",
        cmd = "<CMD>Telescope live_grep<CR>",
        keys = { "n", "<leader>fg" },
    },
    {
        desc = "[Telescope] Find files in Git repository",
        cmd = "<CMD>Telescope git_files<CR>",
        keys = { "n", "<C-p>" },
    },
    {
        desc = "[Telescope] Search for a string in files",
        cmd = "<CMD>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })<CR>",
        keys = { "n", "<leader>ps" },
    }
})
