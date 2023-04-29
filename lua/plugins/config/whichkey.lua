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
            s = { "<cmd>Telescope spell_suggest<CR>", "spell suggest" },
            b = { "<cmd>Telescope buffers<CR>", "all buffers" },
            t = { "<cmd>TodoTelescope<CR>", "todos" },
            ["."] = { "<cmd>Telescope keymaps<CR>", "keymaps" }
        },

        l = {
            name = "LSP",
            r = { "<cmd>lua require('cosmic-ui').rename()<CR>", "rename" },
            d = { "<cmd>Telescope diagnostics<CR>", "diagnostics" },
            f = { "<cmd>lua vim.lsp.buf.format { async = true }<CR>", "format" },
            a = { "<cmd>CodeActionMenu<CR>", "code action" }
        },

        b = {
            name = "Buffer",
            p = { "<cmd>BufferPick<CR>", "pick buffer" },
            q = { "<cmd>BufferMovePrevious<CR>", "move buffer left" },
            w = { "<cmd>BufferMoveNext<CR>", "move buffer right" },
            x = { "<cmd>BufferCloseAllButCurrent<CR>", "close all but current" }
        },

        g = {
            name = "Git",
            b = { "<cmd>Gitsigns blame_line<CR>", "blame line" },
            B = { "<cmd>DiffviewOpen<CR>", "diff view & merge tool" },
            d = { "<cmd>Gitsigns diffthis<CR>", "diff" },
            s = { "<cmd>Telescope git_status<CR>", "git status" },
            c = { "<cmd>Telescope git_commits<CR>", "commits" },
            C = { "<cmd>DiffviewClose<CR>", "close diffview & merge tool" }
        },

        x = { "<cmd>BufferClose<CR>", "close buffer" },
        c = { "<cmd>Telescope colorscheme<CR>", "colorscheme" },
        s = { "<cmd>SymbolsOutline<CR>", "symbols outline" },
        h = { "<cmd>noh<CR>", "no highlight" },
        k = { "<cmd>lua vim.lsp.buf.hover()<CR>", "hover" }
    },

    t = {
        name = "Trouble",
        t = { "<cmd>TroubleToggle<CR>", "toggle trouble" }
    },

    g = {
        d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "definition" },
        D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "declaration" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "implementation" },
        t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition" }
    },

    K = { "<cmd>lua require('lsp_signature').toggle_float_win()<CR>", "hover" },

    -- Nvim Tree
    ["<C-n>"] = { "<cmd>Neotree toggle<CR>", "toggle neotree" },

    -- Switching Buffers
    ["<TAB>"] = { "<cmd>BufferNext<CR>", "next buffer" },
    ["<S-TAB>"] = { "<cmd>BufferPrevious<CR>", "previous buffer" },

    -- Find in file
    ["<C-f>"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "find in file" }
})
