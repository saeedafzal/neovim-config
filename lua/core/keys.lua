local function map(mode, lhs, rhs)
    vim.api.nvim_set_keymap(mode, lhs, rhs, {})
end

-- Buffer navigation
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")
map("n", "<leader>x", ":bd!<CR>")

-- Resize buffer splits
map("n", "<S-Left>", ":vertical resize +3<CR>")
map("n", "<S-Right>", ":vertical resize -3<CR>")
map("n", "<S-Down>", ":horizontal resize +3<CR>")
map("n", "<S-Up>", ":horizontal resize -3<CR>")

-- Netrw
map("n", "<C-n>", ":Exp<CR>")

-- Remove highlights
map("n", "<leader>h", ":noh<CR>")

-- Replace (visual)
map("v", "<leader>r", "\"hy:%s/<C-r>h//g<left><left>")
