return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "windwp/nvim-ts-autotag",
        "JoosepAlviste/nvim-ts-context-commentstring"
    },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            highlight = { enable = true },
            incremental_selection = { enable = true },
            indent = {
                enable = true,
                disable = { 'dart' }
            },
            autotag = { enable = true },
            context_commentstring = { enable = true, enable_autocmd = false },
            matchup = { enable = true }
        }
    end
}
