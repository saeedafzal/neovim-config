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

-- Neovide
if vim.g.neovide == true then
    map("n", "<C-+>", ":lua vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + 0.1, 1.0)<CR>")
    map("n", "<C-_>", ":lua vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - 0.1, 0.1)<CR>")
end

-- Theme toggling
map("n", "<leader>t", ":lua require('theme_switcher').toggle()<CR>")

-- LSP
map("n", "<S-k>", ":lua vim.lsp.buf.hover()<CR>")
map("n", "<leader>lf", ":lua vim.lsp.buf.format { async = true }<CR>")
map("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>")
map("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>")
map("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
