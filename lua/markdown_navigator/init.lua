local M = {}

function M.open()
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

function M.setup()
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function()
            vim.api.nvim_set_keymap("n", "<CR>", ":lua require('markdown_navigator').open()", {})
        end
    })
end

return M
