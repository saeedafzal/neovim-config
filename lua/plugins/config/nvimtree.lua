require("nvim-tree").setup {
    disable_netrw = true,
    create_in_closed_folder = true,
    hijack_cursor = true,
    update_cwd = true,

    view = {
        hide_root_folder = true
    },

    renderer = {
        highlight_git = true,
        highlight_opened_files = "all",
        group_empty = true,
        indent_markers = {
            enable = true
        }
    },

    update_focused_file = {
        enable = true,
        update_cwd = true
    },

    diagnostics = {
        enable = true
    }
}
