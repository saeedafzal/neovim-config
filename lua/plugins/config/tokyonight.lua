require("tokyonight").setup {
    style = "night",
    styles = {
        comments = { italic = true },
        keywords = { italic = true, bold = true },
        functions = { italic = true, bold = true },
        variables = { italic = true, bold = true }
    },
    lualine_bold = true
}

vim.cmd [[colorscheme tokyonight]]
