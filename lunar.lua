-- Custom additions to my lunarvim setup

-- CUSTOM CONFIGURATION
local opt = vim.opt
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.scrolloff = 8

-- PLUGINS
lvim.plugins = {
    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end
    },
    {
        "NvChad/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    },
    {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        cmd = "TroubleToggle",
        config = function()
            require("trouble").setup()
        end
    },
    {
        "weilbith/nvim-code-action-menu",
        requires = "neovim/nvim-lspconfig",
        cmd = "CodeActionMenu"
    },
    {
        "ellisonleao/glow.nvim",
        config = function()
            require("glow").setup()
        end
    },
    {
        "CosmicNvim/cosmic-ui",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("cosmic-ui").setup()
        end
    },
    {
        "leoluz/nvim-dap-go",
        config = function()
            require("dap-go").setup()
        end
    }
}

lvim.builtin.dap.active = true

-- KEYMAPS
lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    t = { "<cmd>TroubleToggle<CR>", "Trouble Toggle" },
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

lvim.builtin.which_key.mappings["la"] = {
    "<cmd>CodeActionMenu<CR>",
    "Code Action"
}

lvim.keys.normal_mode["<TAB>"] = "<cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-TAB>"] = "<cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-f>"] = "<cmd>Telescope current_buffer_fuzzy_find<CR>"
lvim.keys.normal_mode["<C-k>"] = "25<C-e>"

lvim.builtin.which_key.mappings["lr"] = {
    "<cmd>lua require('cosmic-ui').rename()<CR>",
    "Rename"
}
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
