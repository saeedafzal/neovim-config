return {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    opts = {
        options = {
            theme = "tokyonight"
        },

        extensions = {
            "fzf",
            "lazy",
            "neo-tree",
            "nvim-dap-ui",
            "symbols-outline",
            "toggleterm",
            "trouble"
        }
    }
}
