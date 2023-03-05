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

    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        tag = "*",
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

    -- Teleport

    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    }

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("plugins.config.telescope")
        end
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        requires = "neovim/nvim-lspconfig",
        config = function()
            require("mason").setup()
        end
    }

    use {
        "williamboman/mason-lspconfig.nvim",
        requires = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim"
        },
        config = function()
            require("plugins.config.mason")
        end
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            require("plugins.config.cmp")
        end
    }

    use {
        "rafamadriz/friendly-snippets",
        requires = "L3MON4D3/LuaSnip"
    }

    use {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function()
            require("lsp_signature").setup()
        end
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

    use {
        "simrat39/symbols-outline.nvim",
        config = function()
            require("symbols-outline").setup()
        end
    }

    use {
        "folke/which-key.nvim",
        config = function()
            require("plugins.config.whichkey")
        end
    }

    use {
        "RRethy/vim-illuminate",
        requires = "neovim/nvim-lspconfig"
    }

    use {
        "weilbith/nvim-code-action-menu",
        requires = "neovim/nvim-lspconfig",
        cmd = "CodeActionMenu"
    }

    use {
        "ellisonleao/glow.nvim",
        config = function()
            require("glow").setup()
        end
    }

    use {
        "CosmicNvim/cosmic-ui",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("cosmic-ui").setup()
        end
    }

    if packer_bootstrap then
        require("packer").sync()
    end
end)
