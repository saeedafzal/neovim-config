return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        { "windwp/nvim-ts-autotag", config = true }
    },
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup {
            ensure_installed = { "lua" },
            highlight = { enable = true },

            indent = {
                enable = true,
                disable = { "dart" }
            },

            autotag = { enable = true },
            matchup = { enable = true }
        }
    end
}
