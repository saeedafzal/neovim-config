return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        }
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup {
            defaults = {
                layout_config = {
                    vertical = { width = 0.5 }
                }
            },
            pickers = {
                fd = { layout_strategy = "vertical" },
                live_grep = { layout_strategy = "vertical" },
                current_buffer_fuzzy_find = { layout_strategy = "vertical" }
            }
        }

        telescope.load_extension("fzf")
    end
}
