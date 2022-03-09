local g = vim.g

g.nvim_tree_indent_markers = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_group_empty = 1
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

require("nvim-tree").setup {
    disable_netrw = true,
    ignore_ft_on_setup = { "dashboard" },
    hijack_cursor = true,
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true
    },
    git = {
        ignore = false
    },
    view = {
        hide_root_folder = true
    }
}
