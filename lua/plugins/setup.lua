require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/plenary.nvim"
    use "nathom/filetype.nvim"

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd[[colorscheme catppuccin]]
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
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
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
        end
    }

    use {
        "akinsho/toggleterm.nvim",
        config = function()
            require("plugins.config.toggleterm")
        end
    }

    -- LSP
    use "neovim/nvim-lspconfig"

    use {
        "ray-x/lsp_signature.nvim",
        after = "nvim-lspconfig",
        config = function()
            require("lsp_signature").setup()
        end
    }

    use {
        "rafamadriz/friendly-snippets",
        module = "cmp_nvim_lsp",
        event = "InsertCharPre"
    }

    use {
        "hrsh7th/nvim-cmp",
        after = "friendly-snippets",
        config = function()
            require("plugins.config.cmp")
        end
    }

    use {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        after = "nvim-cmp",
        config = function()
            require("plugins.config.luasnip")
        end
    }

    use {
        "saadparwaiz1/cmp_luasnip",
        after = "LuaSnip"
    }

    use {
        "hrsh7th/cmp-nvim-lua",
        after = "cmp_luasnip"
    }

    use {
        "hrsh7th/cmp-nvim-lsp",
        after = "cmp-nvim-lua"
    }

    use {
        "hrsh7th/cmp-buffer",
        after = "cmp-nvim-lsp"
    }

    use {
        "hrsh7th/cmp-path",
        after = "cmp-buffer"
    }

    use {
        "williamboman/nvim-lsp-installer",
        requires = "neovim/nvim-lspconfig",
        config = function()
            local lspInstaller = require("nvim-lsp-installer")

            lspInstaller.on_server_ready(function(server)
                local opts = {}
                server:setup(opts)
                vim.cmd [[ do User LspAttachBuffers ]]
            end)
        end
    }

    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end
    }

    use {
        "simrat39/symbols-outline.nvim",
        cmd = "SymbolsOutline"
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup()
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
