local wk = require("which-key")

wk.setup {
    ignore_missing = true,
    key_labels = {
        ["<space>"] = "SPC"
    }
}

wk.register({
    ["<leader>"] = {
        f = {
            name = "Find",
            f = { "<cmd>Telescope fd<CR>", "find file" },
            w = { "<cmd>Telescope live_grep<CR>", "live grep" },
            b = { "<cmd>Telescope buffers<CR>", "all buffers" },
            t = { "<cmd>TodoTelescope<CR>", "todos" },
            ["."] = { "<cmd>Telescope keymaps<CR>", "keymaps" }
        },

        l = {
            name = "LSP",
            r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "rename" },
            d = { "<cmd>Telescope diagnostics<CR>", "diagnostics" }
        },

        b = {
            name = "Buffer",
            p = { "<cmd>BufferPick<CR>", "pick buffer" }
        },

        g = {
            name = "Git",
            b = { "<cmd>Gitsigns blame_line<CR>", "blame line" },
            d = { "<cmd>Gitsigns diffthis<CR>", "diff" },
            s = { "<cmd>Telescope git_status<CR>", "git status" },
            c = { "<cmd>Telescope git_commits<CR>", "commits" }
        },

        x = { "<cmd>BufferClose<CR>", "close buffer" },
        r = { "<cmd>NvimTreeRefresh<CR>", "refresh tree" },
        c = { "<cmd>Telescope colorscheme<CR>", "colorscheme" },
        s = { "<cmd>SymbolsOutline<CR>", "symbols outline" }
    },

    t = {
        name = "Trouble",
        t = { "<cmd>TroubleToggle<CR>", "toggle trouble" }
    },

    -- Nvim Tree
    ["<C-n>"] = { "<cmd>NvimTreeToggle<CR>", "toggle nvimtree" },

    -- Switching Buffers
    ["<TAB>"] = { "<cmd>BufferNext<CR>", "next buffer" },
    ["<S-TAB>"] = { "<cmd>BufferPrevious<CR>", "previous buffer" }
})
