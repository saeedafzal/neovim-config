-- Helper function to add key mappings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options) 
end

-- Normal mode from home row
map("i", "jk", "<Esc>")

-- Buffer navigation
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")
map("n", "<leader>x", ":bd!<CR>")

-- Resize buffer splits
map("n", "<C-Left>", ":vertical resize +3<CR>")
map("n", "<C-Right>", ":vertical resize -3<CR>")
map("n", "<C-Down>", ":horizontal resize +3<CR>")
map("n", "<C-Up>", ":horizontal resize -3<CR>")

-- Netrw
map("n", "<C-n>", ":Exp<CR>")

-- Remove highlights
map("n", "<leader>h", ":noh<CR>")

-- Replace (visual)
map("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")
