return {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    opts = {
        options = {
            theme = "catppuccin"
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
