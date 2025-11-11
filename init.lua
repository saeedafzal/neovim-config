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
vim.o.termguicolors = true

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

vim.o.wildignore = "**/node_modules/**,*.o"
vim.o.path = ".,**"

-- Keybindings
vim.keymap.set("n", "<leader>o", ":update<CR>:source<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>x", ":bd!<CR>")
vim.keymap.set("n", "<leader>h", ":noh<CR>")
vim.keymap.set("n", "<C-n>", ":Exp<CR>")

-- Imports
require "core.commands"
require "core.autocmds"

-- Plugins
vim.pack.add({
    { src = "https://github.com/wakatime/vim-wakatime" }
})

-- Theme
vim.cmd [[colorscheme default]]
