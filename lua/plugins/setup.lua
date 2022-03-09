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
        "ojroques/nvim-bufdel",
        config = function()
            require("plugins.config.bufdel")
        end,
        setup = function()
            require("core.mappings").bufdel()
        end
    }

    use {
        "akinsho/bufferline.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            "ojroques/nvim-bufdel"
        },
        config = function()
            require("plugins.config.bufferline")
        end,
        setup = function()
            require("core.mappings").bufferline()
        end
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.config.lualine")
        end
    }

    use {
        "lewis6991/gitsigns.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("gitsigns").setup()
        end,
        setup = function()
            require("core.mappings").gitsigns()
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        config = function()
            require("plugins.config.blankline")
        end
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end
    }

    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.config.nvimtree")
        end,
        setup = function()
            require("core.mappings").nvimtree()
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
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                run = "make"
            }
        },
        config = function()
            require("plugins.config.telescope")
        end,
        setup = function()
            require("core.mappings").telescope()
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require("plugins.config.toggleterm")
        end
    }

    if packer_bootstrap then
        require("packer").sync()
    end
end)
