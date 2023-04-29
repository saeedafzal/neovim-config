return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    cmd = "Neotree",
    init = function()
        vim.g.neo_tree_remove_legacy_commands = true
        vim.fn.sign_define("DiagnosticSignError",
            {text = " ", texthl = "DiagnosticSignError"})
        vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
        vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
        vim.fn.sign_define("DiagnosticSignHint",
            {text = "", texthl = "DiagnosticSignHint"})
    end,
    opts = {
        close_if_last_window = true,

        source_selector = {
            winbar = true,
            content_layout = "center",
            sources = {
                { source = "filesystem" },
                { source = "buffers" },
                { source = "git_status" },
                { source = "diagnostics" }
            }
        },

        group_empty_dirs = true,
        window = { width = 30 },

        filesystem = {
            follow_current_file = true,
            hijack_netrw_behavior = "open_current",
            use_libuv_file_watcher = true
        }
    }
}
