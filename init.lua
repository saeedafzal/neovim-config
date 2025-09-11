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

vim.o.wildignore = "**/node_modules/**"
vim.o.path = ".,**"

-- Keybindings
vim.keymap.set("n", "<leader>o", ":update<CR>:source<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>x", ":bd!<CR>")
vim.keymap.set("n", "<leader>h", ":noh<CR>")
vim.keymap.set("n", "<C-n>", ":Exp<CR>")

vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files({ cmd = "fd" }) end)
vim.keymap.set("n", "<leader>fw", function() Snacks.picker.grep() end)

vim.keymap.set("n", "<leader>.", function() Snacks.scratch() end)
vim.keymap.set("n", "<leader>S", function() Snacks.scratch.select() end)

vim.keymap.set("n", "<leader>gb", function() Snacks.git.blame_line() end)

-- Commands
local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

    local num = tonumber(size)
    if num then
        size = num
    end

    vim.o.expandtab = expand
    vim.o.shiftwidth = size
    vim.o.tabstop = size
end

vim.api.nvim_create_user_command("Tabs", function(v)
    indent(v.args, false)
end, { nargs = "?" })

vim.api.nvim_create_user_command("Spaces", function(v)
    indent(v.args, true)
end, { nargs = "?" })

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.cmd [[
            hi Normal guibg=none ctermbg=none
            hi NonText guibg=none ctermbg=none
            hi NormalFloat guibg=none ctermbg=none
        ]]
    end
})

vim.api.nvim_create_user_command("TE", function(v)
    vim.cmd("split")
    vim.cmd("term " .. v.args)
end, { nargs = "*", force = true })

-- autocmd
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.ts", "*.tsx" },
    command = "compiler tsc"
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.go",
    command = "Tabs 4"
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*.rs",
    command = "compiler cargo"
})

-- Plugins
vim.pack.add({
    { src = "https://github.com/wakatime/vim-wakatime" },
    { src = "https://github.com/folke/snacks.nvim" }
})

-- Snacks
require("snacks").setup {
    git = {
        enabled = true,
        border = "rounded"
    },
    picker = {
        enabled = true,
        ui_select = true
    },
    scratch = { enabled = true }
}

-- Theme
vim.cmd [[colorscheme default]]
