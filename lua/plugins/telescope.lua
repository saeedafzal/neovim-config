local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, {})
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup {
            defaults = {
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending"
            }
        }

        telescope.load_extension("fzf")

        map("n", "<leader>ff", builtin.fd)
        map("n", "<leader>fw", builtin.live_grep)
        map("n", "<leader>fb", builtin.buffers)
        map("n", "<C-f>", builtin.current_buffer_fuzzy_find)

        -- Visual word highlight
        map("v", "<C-f>", "y<ESC>:Telescope current_buffer_fuzzy_find default_text=<c-r>0<CR>")
        map("v", "<leader>fw", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>")
        map("v", "<leader>ff", "y<ESC>:Telescope fd default_text=<c-r>0<CR>")
    end
}
