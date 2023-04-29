return {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
        char = "▏",
        context_char = "▏",
        filetype_exclude = {
            "help",
            "terminal",
            "alpha",
            "lazy",
            "neo-tree",
            "Trouble"
        },
        buftype_exclude = { "nofile", "terminal" },
        context_patterns = {
            "class",
            "return",
            "function",
            "method",
            "^if",
            "^while",
            "jsx_element",
            "^for",
            "^object",
            "^table",
            "block",
            "arguments",
            "if_statement",
            "else_clause",
            "jsx_element",
            "jsx_self_closing_element",
            "try_statement",
            "catch_clause",
            "import_statement",
            "operation_type"
        },
        show_trailing_blankline_indent = false,
        show_first_indent_level = false,
        use_treesitter = true,
        show_current_context = true
    }
}
