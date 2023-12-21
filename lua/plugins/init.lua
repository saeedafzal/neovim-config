return {
    "LunarVim/bigfile.nvim",
    "wakatime/vim-wakatime",

    -- NOTE: Plugins

    {
        "nvim-pack/nvim-spectre",
        dependencies = "nvim-lua/plenary.nvim"
    },

    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        dependencies = "nvim-lua/plenary.nvim",
        config = true
    },

    {
        "nmac427/guess-indent.nvim",
        lazy = false,
        config = true
    },

    {
        "f-person/git-blame.nvim",
        cmd = "GitBlameToggle"
    },

    {
        "lewis6991/gitsigns.nvim",
        event = "BufEnter",
        config = true
    },

    {
        "sindrets/diffview.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        cmd = "DiffviewOpen",
        config = true
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufEnter",
        main = "ibl",
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
        "simrat39/symbols-outline.nvim",
        cmd = "SymbolsOutline",
        config = true
    },
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        cmd = "TroubleToggle",
        config = true
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = true
    },

    "RRethy/vim-illuminate",

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
