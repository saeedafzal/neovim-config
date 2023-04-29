return {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = { "<C-t>" },
    opts = {
        size = function(term)
            if term.direction == "horizontal" then
                return 25
            elseif term.direction == "vertical" then
                return vim.o.columns * 0.4
            end
        end,

        open_mapping = [[<c-t>]],
        direction = "float",
        float_opts = {
            border = "curved"
        }
    }
}
