require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"
    use "nathom/filetype.nvim"

    use {
        "folke/tokyonight.nvim",
        config = function()
            require("plugins.config.tokyonight")
        end
    }

    use {
        "kyazdani42/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("plugins.config.treesitter")
        end
    }

    use {
        "andymass/vim-matchup",
        after = "nvim-treesitter"
    }

    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("plugins.config.colorizer")
        end
    }

    use {
        "romgrk/barbar.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        config = function()
            require("plugins.config.lualine")
        end
    }

    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.config.nvimtree")
        end
    }

    use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("plugins.config.blankline")
        end
    }

    use "JoosepAlviste/nvim-ts-context-commentstring"

    use {
        "numToStr/Comment.nvim",
        requires = "JoosepAlviste/nvim-ts-context-commentstring",
        config = function()
            require("Comment").setup()
        end
    }

    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    }

    use {
        "nvim-telescope/telescope.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("plugins.config.telescope")
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require("plugins.config.toggleterm")
        end
    }

    use {
        "goolord/alpha-nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("alpha").setup(require("alpha.themes.dashboard").config)
        end
    }

    use {
        "folke/which-key.nvim",
        config = function()
            require("plugins.config.whichkey")
        end
    }

    -- NOTE: LSP
    use {
        "junnplus/nvim-lsp-setup",
        requires = {
            "neovim/nvim-lspconfig",
            "williamboman/nvim-lsp-installer"
        },
        config = function()
            require("plugins.config.lspsetup")
        end
    }

    use {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function()
            require("lsp_signature").setup()
        end
    }

    use {
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip"
    }

    use {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        {
            "hrsh7th/nvim-cmp",
            config = function()
                require("plugins.config.cmp")
            end
        }
    }

    use {
        "rafamadriz/friendly-snippets",
        event = "InsertCharPre"
    }

    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup()
        end
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end
    }

    if packer_bootstrap then
        require("packer").sync()
    end
end)
