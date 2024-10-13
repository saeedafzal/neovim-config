local g, opt, cmd = vim.g, vim.opt, vim.cmd

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

-- Transparency
vim.cmd([[highlight Normal guibg=none]])
vim.cmd([[highlight NonText guibg=none]])
vim.cmd([[highlight Normal ctermbg=none]])
vim.cmd([[highlight NonText ctermbg=none]])

-- Neovide
if g.neovide == true then
    g.neovide_transparency = 0.7
    g.neovide_scale_factor = 0.5
    g.neovide_cursor_trail_size = 0
end
