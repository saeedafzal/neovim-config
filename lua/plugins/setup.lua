require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"
    use "nathom/filetype.nvim"

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("plugins.config.catppuccin")
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

    if packer_bootstrap then
        require("packer").sync()
    end
end)
