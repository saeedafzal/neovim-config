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

-- Set go as compiler for .go files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.go" },
    command = "compiler go"
})

-- Unfold on buffer read
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*" },
    callback = function() vim.api.nvim_command("normal zR") end
})
