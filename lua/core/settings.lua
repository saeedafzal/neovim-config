-- Helper imports
local opt, g, api, cmd, o = vim.opt, vim.g, vim.api, vim.cmd, vim.o

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
opt.wrap = false
opt.clipboard = "unnamedplus"
opt.completeopt = { "menuone", "noselect" }
opt.splitbelow = true
opt.splitright = true

vim.cmd("set path+=**")

-- Netrw
g.netrw_banner = 0
g.netrw_altv = 1
g.netrw_liststyle = 3

-- Indentation
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.list = true
opt.listchars = "lead:·"

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- TODO: StatusLine
cmd "highlight StatusBuffer guibg=#458588 guifg=#1d2021"
o.statusline = "%f %m %y %q |%n| %=%l,%c        %P"

-- Commands
local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

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

-- Transparent background
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
    pattern = { "*" },
    command = "highlight Normal ctermbg=NONE guibg=NONE"
})

-- Set cargo as compiler for rust files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.rs" },
    command = "compiler cargo"
})
