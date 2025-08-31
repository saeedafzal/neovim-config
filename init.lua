-- Settings
vim.g.mapleader = " "

vim.o.swapfile = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.clipboard = "unnamedplus"
vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true

-- Indentation
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.list = true
vim.o.listchars = "lead:·,tab:··"

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Keybindings
vim.keymap.set("n", "<leader>o", ":update<CR>:source<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>x", ":bd!<CR>")
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("n", "<C-n>", ":Exp<CR>")

-- Commands
local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

    local num = tonumber(size)
    if num then
        size = num
    end

    vim.o.expandtab = expand
    vim.o.shiftwidth = size
    vim.o.tabstop = size
end

vim.api.nvim_create_user_command("Tabs", function(v)
    indent(v.args, false)
end, { nargs = "?" })

vim.api.nvim_create_user_command("Spaces", function(v)
    indent(v.args, true)
end, { nargs = "?" })

vim.api.nvim_create_user_command("TE", function(v)
    vim.cmd("split")
    vim.cmd("term " .. v.args)
end, { nargs = "*", force = true })

-- autocmd
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

-- Plugins
vim.pack.add({
    { src = "https://github.com/wakatime/vim-wakatime" }
})

-- Setup plugins

-- Theme
vim.cmd [[
    hi Normal guibg=none
    hi NonText guibg=none
    hi Normal ctermbg=none
    hi NonText ctermbg=none

    hi statusline guibg=none
    hi statusline guifg=white
]]
