local opt = vim.opt
local g = vim.g

-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Settings
g.mapleader = " "

opt.backup = false
opt.swapfile = false
opt.termguicolors = true
opt.number = true
opt.mouse = "a"
opt.hidden = true
opt.scrolloff = 8

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
