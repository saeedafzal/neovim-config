vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup {
    styles = {
        loops = { "italic" },
        functions = { "italic", "bold" }
    },

    integrations = {
        lsp_trouble = true,
        which_key = true,
        barbar = true
    }
}
