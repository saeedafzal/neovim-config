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
            pickers = {
                fd = { theme = "dropdown" },
                current_buffer_fuzzy_find = { theme = "dropdown" }
            }
        }

        telescope.load_extension("fzf")
    end
}
