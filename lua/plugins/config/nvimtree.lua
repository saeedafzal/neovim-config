require("nvim-tree").setup {
    view = {
        hide_root_folder = true
    },

    renderer = {
        group_empty = true,
        highlight_git = true,

        indent_markers = {
            enable = true
        }
    },

    update_focused_file = {
        enable = true,
        update_root = true
    },

    diagnostics = {
        enable = true
    },

    filters = {
        custom = { ".git" }
    }
}
