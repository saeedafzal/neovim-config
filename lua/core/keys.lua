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

-- Buffer manager
map("n", "<leader>b", ":lua require(\"buffer_manager.ui\").toggle_quick_menu()<CR>")

-- LSP
map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")
map("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
