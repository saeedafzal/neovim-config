require("tokyonight").setup {
    style = "night",
    terminal_colors = true,
    styles = {
        conditionals = { italic = true, bold = true },
        loops = { italic = true, bold = true },
        functions = { italic = true, bold = true },
        keywords = { italic = true, bold = true },
        strings = { bold = true },
        variables = { bold = true },
        numbers = { bold = true },
        booleans = { bold = true },
        properties = { italic = true },
        types = { italic = true, bold = true }
    },
    lualine_bold = true
}

vim.cmd [[colorscheme tokyonight]]
