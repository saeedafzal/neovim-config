return {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        options = {
            theme = "tokyonight"
        },
        extensions = {
            "fzf",
            "lazy",
            "neo-tree",
            "nvim-dap-ui",
            "quickfix",
            "symbols-outline",
            "toggleterm",
            "trouble",
            "mason"
        }
    }
}
