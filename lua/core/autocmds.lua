local api = vim.api

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.rs" },
    command = "compiler cargo"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.go" },
    command = "Tabs 4"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.ts", "*.tsx" },
    command = "compiler tsc"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.dart" },
    callback = function()
        vim.cmd [[Spaces 2]]
        vim.cmd [[compiler dart]]
    end
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.md",
    command = "set conceallevel=3"
})

-- Markdown navigation
function navigate_markdown()
    local line = vim.api.nvim_get_current_line()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local col = cursor_pos[2]

    local pattern = "%[%[([^%]]+%.md)%]%]"
    local start_pos, end_pos, file = line:find(pattern)

    if start_pos and col >= start_pos - 1 and col <= end_pos then
        if vim.fn.filereadable(file) == 1 then
            vim.cmd('edit ' .. file)
        else
            print("File not found: " .. file)
        end
    else
        print("No valid Markdown link under cursor.")
    end
end

api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        api.nvim_set_keymap("n", "gd", ":lua navigate_markdown()<CR>", {})
    end
})
