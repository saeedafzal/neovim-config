return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        enabled = vim.fn.executable "make" == 1,
        build = "make"
    },
    cmd = "Telescope",
    opts = {
        defaults = {
            layout_strategy = "vertical"
        },

        file_ignore_patterns = { "node_modules" }
    },
    config = function()
        local telescope = require("telescope")
        telescope.load_extension("fzf")
    end
}
