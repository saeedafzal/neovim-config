return {
    "LunarVim/bigfile.nvim",
    "wakatime/vim-wakatime",
    "j-morano/buffer_manager.nvim",
    "rcarriga/nvim-notify",

    -- NOTE: Plugins

    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufEnter",
        main = "ibl",
        config = true
    },

    {
        "lewis6991/gitsigns.nvim",
        event = "BufEnter",
        config = true
    },

    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim"
        },
        config = true
    },

    -- NOTE: LSP

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },
    {
        "ray-x/lsp_signature.nvim",
        dependencies = "neovim/nvim-lspconfig",
        config = true
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = true
    },

    -- NOTE: Flutter

    {
        "akinsho/flutter-tools.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim"
        },
        config = true
    }
}
