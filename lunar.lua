-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local opt = vim.opt

-- Indentation
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.scrolloff = 8

-- Plugins
lvim.plugins = {
    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = true
    },
    {
        "akinsho/flutter-tools.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim"
        },
        config = true
    },
    {
        "nmac427/guess-indent.nvim",
        lazy = false,
        config = true
    }
}

-- Mappings
lvim.keys.normal_mode["<TAB>"] = "<cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-TAB>"] = "<cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-f>"] = "<cmd>Telescope current_buffer_fuzzy_find<CR>"
lvim.keys.normal_mode["<C-k>"] = "25<C-e>"
lvim.keys.normal_mode["<C-r>"] = "<cmd>! make<CR>"
lvim.keys.normal_mode["K"] = "<cmd>lua vim.lsp.buf.hover()<CR>"
lvim.keys.normal_mode["gd"] = "<cmd>lua vim.lsp.buf.definition()<CR>"

lvim.builtin.terminal.open_mapping = "<C-t>"

lvim.builtin.which_key.mappings["bb"] = {
    "<cmd>BufferLineMovePrev<CR>",
    "Buffer Move Next"
}
lvim.builtin.which_key.mappings["bn"] = {
    "<cmd>BufferLineMoveNext<CR>",
    "Buffer Move Next"
}

-- Commands
vim.api.nvim_create_user_command("Tabs", function()
    opt.expandtab = false
end, {})

vim.api.nvim_create_user_command("Spaces", function()
    opt.expandtab = true
end, {})
