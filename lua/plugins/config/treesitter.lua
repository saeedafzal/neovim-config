require("nvim-treesitter.configs").setup {
    ensure_installed = { "vim", "lua", "typescript" },
    auto_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
}
