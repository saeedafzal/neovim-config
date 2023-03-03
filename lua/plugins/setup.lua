-- Install packer for the first time
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Safely load packer
local ok, packer = pcall(require, "packer")
if not ok then
    return
end

-- Setup the plugins
return packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"
    use "nathom/filetype.nvim"

    use {
        "folke/tokyonight.nvim",
        config = function()
            require("plugins.config.tokyonight")
        end
    }

    use "kyazdani42/nvim-web-devicons"

    use {
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.config.nvimtree")
        end
    }

    use {
        "romgrk/barbar.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("plugins.config.treesitter")
        end
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        config = function()
            require("plugins.config.lualine")
        end
    }

    use {
        "NvChad/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
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
end)
