local opt = vim.opt
local g = vim.g
local api = vim.api

-- Disable netrw
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Settings
g.mapleader = " "
g.maplocalleader = ","

opt.backup = false
opt.swapfile = false
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.hidden = true
opt.scrolloff = 8

opt.conceallevel = 3

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4

-- Commands
local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

    -- Number conversion
    local num = tonumber(size)
    if num then
        size = num
    end

    opt.expandtab = expand
    opt.shiftwidth = size
    opt.tabstop = size
end

api.nvim_create_user_command("Tabs", function(v)
    indent(v.args, false)
end, { nargs = "?" })

api.nvim_create_user_command("Spaces", function(v)
    indent(v.args, true)
end, { nargs = "?" })
