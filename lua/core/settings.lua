local g, opt, cmd = vim.g, vim.opt, vim.cmd

-- Settings
g.mapleader = " "
g.maplocalleader = ","

opt.backup = false
opt.swapfile = false
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.title = true
opt.titlestring = "%t - NVIM"
opt.wrap = false
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.showmode = false

opt.grepprg = "rg --vimgrep --smart-case"

opt.path = ".,**"
cmd "set path-=node_modules/**"
cmd "set wildignore-=*/node_modules/*"

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.list = true
opt.listchars = "lead:·,tab:··"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
