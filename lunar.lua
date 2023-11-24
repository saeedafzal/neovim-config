-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local opt = vim.opt
local api = vim.api

-- Indentation
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.scrolloff = 8

-- Plugins
lvim.plugins = {
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        dependencies = "nvim-lua/plenary.nvim",
        config = true
    },
    {
        "akinsho/flutter-tools.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "stevearc/dressing.nvim"
        },
        config = true
    },
    {
        "nmac427/guess-indent.nvim",
        lazy = false,
        config = true,
    },
    {
        "NvChad/nvim-colorizer.lua",
        event = "BufEnter",
        opts = {
            filetypes = {
                "*",
                "!markdown",
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
    },
    {
        "nvim-pack/nvim-spectre",
        dependencies = "nvim-lua/plenary.nvim"
    },
    {
        "ellisonleao/glow.nvim",
        cmd = "Glow",
        config = true
    },
    {
        "f-person/git-blame.nvim",
        cmd = "GitBlameToggle"
    },
    {
        "sindrets/diffview.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        cmd = "DiffviewOpen",
        config = true
    },
    {
        "ray-x/lsp_signature.nvim",
        dependencies = "neovim/nvim-lspconfig",
        config = true
    },
    {
        "simrat39/symbols-outline.nvim",
        cmd = "SymbolsOutline",
        config = true
    }
}

-- Mappings
lvim.keys.normal_mode["<TAB>"] = "<cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-TAB>"] = "<cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-f>"] = "<cmd>Telescope current_buffer_fuzzy_find<CR>"

lvim.builtin.terminal.open_mapping = "<C-t>"

-- Commands
local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

    -- Number conversion
    local num = tonumber(size)
    if num then
        size = num
    end

    opt.expandtab = expand
    opt.shiftwidth = size
    opt.tabstop = size
end

api.nvim_create_user_command("Tabs", function(v)
    indent(v.args, false)
end, { nargs = "?" })

api.nvim_create_user_command("Spaces", function(v)
    indent(v.args, true)
end, { nargs = "?" })
