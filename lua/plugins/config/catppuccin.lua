require("catppuccin").setup {
    integrations = {
        lsp_trouble = true,
        which_key = true,
        barbar = true
    }
}

vim.cmd[[colorscheme catppuccin]]
