-- Transparent background
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
    pattern = { "*" },
    command = "highlight Normal ctermbg=NONE guibg=NONE"
})

-- Set cargo as compiler for .rs files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.rs" },
    command = "compiler cargo"
})

-- Set indentation for .go files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.go" },
    callback = function()
        vim.cmd [[Tabs 4]]
        vim.cmd [[set nolist]]
    end
})

-- Unfold on buffer read
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*" },
    callback = function() vim.api.nvim_command("normal zR") end
})
