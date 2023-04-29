return {
    "nvim-lua/plenary.nvim",
    "nathom/filetype.nvim",
    "LunarVim/bigfile.nvim",
    "f-person/git-blame.nvim",

    {
        "numToStr/Comment.nvim",
        event = "BufEnter",
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
        dependencies = "nvim-treesitter/nvim-treesitter",
        event = "BufEnter"
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
    }
}
