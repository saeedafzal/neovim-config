local api = vim.api

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.rs" },
    command = "compiler cargo"
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.go" },
    callback = function()
        vim.cmd [[Tabs 4]]
	command = "compiler go"
    end
})

api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.ts", "*.tsx" },
    command = "compiler tsc"
})
