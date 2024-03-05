-- Settings
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.title = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.cmd "set path+=**"

-- Netrw
vim.g.netrw_banner = 0

-- Indentation
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.list = true
vim.opt.listchars = "lead:·"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- TODO: StatusLine
-- vim.cmd "highlight StatusBuffer guibg=#458588 guifg=#1d2021"
vim.o.statusline = "%f %m %y %q |%n| %=%l,%c        %P"

-- Commands
local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

    local num = tonumber(size)
    if num then
        size = num
    end

    vim.opt.expandtab = expand
    vim.opt.shiftwidth = size
    vim.opt.tabstop = size
end

vim.api.nvim_create_user_command("Tabs", function(v)
    indent(v.args, false)
end, { nargs = "?" })

vim.api.nvim_create_user_command("Spaces", function(v)
    indent(v.args, true)
end, { nargs = "?" })
