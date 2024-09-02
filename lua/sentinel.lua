-- Plugin: sentinel.lua

local M = {}

-- Dependencies
local sqlite = require('sqlite')
local popup = require('plenary.popup')

-- Open database connection

-- Function to get visual selection
local function get_visual_selection()
    local s_start = vim.fn.getpos("'<")
    local s_end = vim.fn.getpos("'>")
    local n_lines = math.abs(s_end[2] - s_start[2]) + 1
    local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
    lines[1] = string.sub(lines[1], s_start[3], -1)
    if n_lines == 1 then
        lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
    else
        lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
    end
    return table.concat(lines, '\n')
end

-- Function to open popup
local function open_popup()
    local width = 60
    local height = 10
    local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
    local bufnr = vim.api.nvim_create_buf(false, true)
    local win_id = popup.create(bufnr, {
        title = "Sentinel",
        line = math.floor(((vim.o.lines - height) / 2) - 1),
        col = math.floor((vim.o.columns - width) / 2),
        minwidth = width,
        minheight = height,
        borderchars = borderchars,
    })
    return bufnr, win_id
end

-- Function to send query to LLM (placeholder)
local function query_llm(code, question)
    -- Implement your LLM query logic here
    return "This is a placeholder answer. Implement actual LLM integration."
end

-- Main function
function M.sentinel()
    local code = get_visual_selection()
    local bufnr, win_id = open_popup()

    -- Set up the popup buffer
    vim.api.nvim_buf_set_option(bufnr, 'modifiable', true)
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "Enter your question:" })

    -- Set up autocmd to process the question when user presses Enter
    vim.api.nvim_create_autocmd("BufLeave", {
        buffer = bufnr,
        callback = function()
            local question = vim.api.nvim_buf_get_lines(bufnr, 1, 2, false)[1]
            local answer = query_llm(code, question)

            -- Store in SQLite database
            local stmt = db:prepare("INSERT INTO queries (code, question, answer) VALUES (?, ?, ?)")
            stmt:bind_values(code, question, answer)
            stmt:step()
            stmt:finalize()

            -- Display answer in the popup
            vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, vim.split(answer, "\n"))
            vim.api.nvim_buf_set_option(bufnr, 'modifiable', false)
        end
    })
end

-- Function to initialize the plugin
function M.setup()
    --   local db = sqlite.open(vim.fn.expand('~/.sentinel_history.db'))
    --   -- Create table if not exists
    --   db:exec [[
    --   CREATE TABLE IF NOT EXISTS queries (
    --     id INTEGER PRIMARY KEY AUTOINCREMENT,
    --     code TEXT,
    --     question TEXT,
    --     answer TEXT,
    --     timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
    --   )
    -- ]]

    -- Set up the command
    vim.api.nvim_create_user_command('Sentinel', M.sentinel, {})
end

return M
