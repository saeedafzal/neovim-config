return {
    "wakatime/vim-wakatime",
    {
        "nvim-lualine/lualine.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = true
    },
    {
        "j-morano/buffer_manager.nvim",
        requires = "nvim-lua/plenary.nvim"
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require "lsp_signature".setup(opts) end
    }
}
