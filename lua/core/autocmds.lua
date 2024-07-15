local api = vim.api

-- Set cargo for .rs files
api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.rs" },
    command = "compiler cargo"
})

-- Indentation for .go files
api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.go" },
    callback = function()
        vim.cmd [[Tabs 4]]
    end
})

-- Set tsc for .ts files
api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.ts", "*.tsx" },
    command = "compiler tsc"
})
