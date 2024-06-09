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

        -- Visual word highlight
        local default_opts = {noremap = true, silent = true}
        vim.api.nvim_set_keymap("v", "<C-f>", "y<ESC>:Telescope current_buffer_fuzzy_find default_text=<c-r>0<CR>", {})
        vim.api.nvim_set_keymap("v", "<leader>fw", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", {})
        vim.api.nvim_set_keymap("v", "<leader>ff", "y<ESC>:Telescope fd default_text=<c-r>0<CR>", {})
    end
}
