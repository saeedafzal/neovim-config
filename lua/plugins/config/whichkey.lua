local wk = require("which-key")

wk.setup {
    -- TODO: Change to true
    ignore_missing = false,
    key_labels = {
        ["<space>"] = "SPC"
    }
}

wk.register({
    ["<leader>"] = {
        -- Files
        ["<space>"] = { "<cmd>Telescope fd<CR>", "find files" },

        -- Buffers
        b = {
            name = "buffers",
            x = { "<cmd>BufferClose<CR>", "close buffer" },
            n = { "<cmd>BufferMoveNext<CR>", "move next" },
            m = { "<cmd>BufferMovePrevious<CR>", "move previous" },
            f = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "find in current buffer" },

            p = {
                name = "pinned buffers",
                p = { "<cmd>BufferPin<CR>", "pin buffer" },
                x = { "<cmd>BufferCloseAllButPinned<CR>", "close all but pinned" }
            }
        },

        -- Telescope
        t = {
            name = "Telescope",
            w = { "<cmd>Telescope live_grep<CR>", "live grep" },
            b = { "<cmd>Telescope buffers<CR>", "Buffers" },
            k = { "<cmd>Telescope keymaps<CR>", "Keymaps" },
            t = { "<cmd>TodoTelescope<CR>", "Todos" },
            c = { "<cmd>TodoTelescope<CR>", "" },
            ["."] = { "<cmd>Telescope keymaps<CR>", "Global Keymaps" }
        },

        -- Git
        g = {
            name = "Git",
            b = { "<cmd>Gitsigns blame_line<CR>", "Blame Line" },
            d = { "<cmd>Gitsigns diffthis<CR>", "Diff" }
        },

        -- LSP
        l = {
            name = "LSP",
            a = { "<cmd>vim.lsp.buf.code_action()<CR>", "Code Action" },
            f = { "<cmd>vim.lsp.buf.formatting()<CR>", "Format" },
            n = { "<cmd>vim.lsp.buf.rename()<CR>", "Rename" }
        }
    },

    -- NvimTree
    ["<C-n>"] = { "<cmd>NvimTreeToggle<CR>", "NvimTree Toggle" },

    -- Switching Buffers
    ["<TAB>"] = { "<cmd>BufferNext<CR>", "Next Buffer" },
    ["<S-TAB>"] = { "<cmd>BufferPrevious<CR>", "Previous Buffer" },

    -- Trouble
    ["t"] = {
        name = "Trouble",
        t = { "<cmd>TroubleToggle<CR>", "Trouble Toggle" },
        d = { "<cmd>TodoTrouble<CR>", "Todos" }
    }
})
