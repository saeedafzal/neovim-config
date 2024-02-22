-- Transparent background
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
    pattern = { "*" },
    command = "highlight Normal ctermbg=NONE guibg=NONE"
})

-- Set cargo as compiler for rust files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.rs" },
    command = "compiler cargo"
})
