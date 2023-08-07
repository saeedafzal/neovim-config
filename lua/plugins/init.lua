return {
    "nvim-lua/plenary.nvim",
    "LunarVim/bigfile.nvim",
    "f-person/git-blame.nvim",
    "nvim-tree/nvim-web-devicons",

    {
        "numToStr/Comment.nvim",
        config = true
    },

    {
        "goolord/alpha-nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end
    },

    {
        "andymass/vim-matchup",
        dependencies = "nvim-treesitter/nvim-treesitter"
    },

    {
        "ellisonleao/glow.nvim",
        cmd = "Glow",
        config = true
    },

    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = true
    },

    {
        "nmac427/guess-indent.nvim",
        config = true
    },

    {
        "lewis6991/gitsigns.nvim",
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
        "neovim/nvim-lspconfig",
        lazy = true,
        dependencies = {
            { "folke/neodev.nvim", opts = { experimental = { pathStrict = true } } },
            "williamboman/mason-lspconfig.nvim"
        }
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = "williamboman/mason.nvim",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local handlers = {
                function (server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end
            }

            require("mason-lspconfig").setup { handlers = handlers }
        end
    },

    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = true
    },

    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
            config = function()
                require("luasnip.loaders.from_vscode").lazy_load()
            end
        }
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },

    "RRethy/vim-illuminate",

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
        "weilbith/nvim-code-action-menu",
        dependencies = "neovim/nvim-lspconfig",
        cmd = "CodeActionMenu"
    },

    {
        "CosmicNvim/cosmic-ui",
        lazy = true,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim"
        },
        config = true
    },

    {
        "rcarriga/nvim-dap-ui",
        lazy = true,
        dependencies = "mfussenegger/nvim-dap",
        config = true
    },

    {
        "leoluz/nvim-dap-go",
        lazy = true,
        dependencies = "mfussenegger/nvim-dap",
        config = true
    },

    {
        "folke/which-key.nvim",
        config = function()
            require("plugins.config.whichkey")
        end
    },

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
