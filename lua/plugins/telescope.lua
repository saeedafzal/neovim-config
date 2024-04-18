return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup()

        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>ff", builtin.fd, {})
        vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<C-f>", builtin.current_buffer_fuzzy_find, {})
    end
}
