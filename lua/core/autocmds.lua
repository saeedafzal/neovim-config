vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.cmd [[
            hi Normal guibg=none ctermbg=none
            hi NonText guibg=none ctermbg=none
            hi NormalFloat guibg=none ctermbg=none
        ]]
    end
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.ts", "*.tsx" },
    command = "compiler tsc"
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.go",
    command = "Tabs 4"
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.rs",
    command = "compiler cargo"
})
