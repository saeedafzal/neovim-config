local api = vim.api

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.rs",
    command = "compiler cargo"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.go",
    command = "Tabs 4"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.dart",
    callback = function()
        vim.cmd [[Spaces 2]]
        vim.cmd [[compiler dart]]
    end
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.md",
    command = "set conceallevel=3"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.ts", "*.tsc" },
    command = "compiler tsc"
})
