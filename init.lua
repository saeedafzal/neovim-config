-- Settings
vim.g.mapleader = " "

vim.o.swapfile = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.clipboard = "unnamedplus"
vim.o.signcolumn = "yes"

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

vim.keymap.set("n", "<C-n>", ":Oil<CR>")
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>")

-- Plugins
vim.pack.add({
    { src = "https://github.com/wakatime/vim-wakatime" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/echasnovski/mini.pick" }
})

-- Setup plugins
require("mini.pick").setup()
require("oil").setup()

-- Theme
vim.cmd [[
    hi Normal guibg=none
    hi NonText guibg=none
    hi Normal ctermbg=none
    hi NonText ctermbg=none

    hi statusline guibg=none
    hi statusline guifg=white
]]
