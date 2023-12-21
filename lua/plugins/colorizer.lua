return {
    "NvChad/nvim-colorizer.lua",
    event = "BufEnter",
    opts = {
        filetypes = {
            "*";
            "!markdown";
            "!neorg";
        },
        buftypes = {
            "*",
            "!prompt",
            "!popup"
        },
        user_default_options = {
            RRGGBBAA = true,
            AARRGGBB = true,
            rgb_fn = true,
            hsl_fn = true,
            css = true,
            css_fn = true,
            sass = { enable = true }
        }
    }
}
