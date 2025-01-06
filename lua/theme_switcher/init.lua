local M = {}

function M.toggle()
    if vim.o.background == "light" then
        vim.o.background = "dark"
        vim.cmd [[colorscheme default]]
    else
        vim.o.background = "light"
        vim.cmd [[colorscheme shine]]
    end

    vim.cmd [[
        hi Normal guibg=none
        hi NonText guibg=none
        hi Normal ctermbg=none
        hi NonText ctermbg=none
    ]]
end

return M
