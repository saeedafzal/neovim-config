-- Import core configuration
require("core")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Import plugins
require("lazy").setup("plugins")

-- Terminal mappings
function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    local set = vim.keymap.set
    set("t", "<esc>", [[<C-\><C-n>]], opts)
    set("t", "jk", [[<C-\><C-n>]], opts)
    set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
    set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
    set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
    set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
    set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

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

-- Colorscheme
vim.cmd [[colorscheme slate]]
