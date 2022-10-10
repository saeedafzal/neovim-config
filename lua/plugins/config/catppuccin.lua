vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup {
    term_colors = true,
    styles = {
        conditionals = { "italic", "bold" },
        loops = { "italic", "bold" },
        functions = { "italic", "bold" },
        keywords = { "italic", "bold" },
        strings = { "bold" },
        variables = { "bold" },
        numbers = { "bold" },
        booleans = { "bold" },
        properties = { "italic" },
        types = { "italic", "bold" }
    },
    integrations = {
        barbar = true,
        gitsigns = true,
        cmp = true,
        nvimtree = true,
        treesitter_context = true,
        treesitter = true,
        symbols_outline = true,
        telescope = true,
        lsp_trouble = true,
        which_key = true,

        indent_blankline = {
            enabled = true,
            colored_indent_levels = false
        },

        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" }
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" }
            }
        },
    }
}

-- vim.cmd [[colorscheme catppuccin]]
