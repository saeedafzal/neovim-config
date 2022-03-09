require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "lua",
        "typescript",
        "tsx",
        "json",
        "javascript"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    },
    matchup = {
        enable = true
    },
    context_commentstring = {
        enable = true
    }
}
