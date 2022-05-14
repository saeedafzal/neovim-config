require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "bash", "cpp", "css", "go", "gomod", "html", "javascript", "json", "make", "python", "typescript" },

    highlight = {
        enable = true
    },
    
    matchup = {
        enable = true
    }
}
