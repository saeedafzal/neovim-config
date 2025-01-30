local g, opt, o = vim.g, vim.opt, vim.o

-- Settings
g.mapleader = " "

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

opt.path = ".,**"
opt.wildignore:append({
    "**/node_modules/**",
    "**/target/**"
})

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.list = true
opt.listchars = "lead:·,tab:··"

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Code Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99
