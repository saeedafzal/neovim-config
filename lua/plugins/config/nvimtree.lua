local g = vim.g

g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_group_empty = 1
g.nvim_tree_create_in_closed_folder = 1

require("nvim-tree").setup {
    disable_netrw = true,
    hijack_cursor = true,
    update_cwd = true,

    view = {
        hide_root_folder = true
    },

    renderer = {
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
