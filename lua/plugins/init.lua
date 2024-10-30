return {
    {
        "nvim-lualine/lualine.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = true
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require "lsp_signature".setup(opts) end
    }
}
