return {
    "LunarVim/bigfile.nvim",
    "wakatime/vim-wakatime",

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
        "andymass/vim-matchup",
        event = "CursorMoved",
        config = function()
            vim.g.matchup_matchparen_offscreen = { method = "popup" }
        end
    },

    {
        "ellisonleao/glow.nvim",
        cmd = "Glow",
        config = true
    },

    -- NOTE: Git
    "f-person/git-blame.nvim",

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

    -- NOTE: LSP
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        lazy = true,
        config = false,
        init = function()
            local g = vim.g
            g.lsp_zero_extend_cmp = 0
            g.lsp_zero_extend_lspconfig = 0
        end
    },

    {
        "williamboman/mason.nvim",
        lazy = false,
        config = true
    },

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

    {
        "rmagatti/goto-preview",
        opts = {
            default_mappings = true
        }
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
