local opt = vim.opt
local g = vim.g

-- Disable
g.loaded = 1
g.loaded_netrwPlugin = 1

-- Settings
g.mapleader = " "

opt.backup = false
opt.swapfile = false
opt.termguicolors = true
opt.number = true
opt.mouse = "a"
opt.cursorline = true
opt.hidden = true

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
