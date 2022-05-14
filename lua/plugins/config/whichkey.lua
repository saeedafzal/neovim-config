local wk = require("which-key")

wk.setup {
    ignore_missing = false
}

wk.register({
    ["<leader>"] = {
        -- Barbar
        b = {
            name = "Barbar",
            x = { "<cmd>BufferClose<CR>", "Close Buffer" },
            n = { "<cmd>BufferMoveNext<CR>", "Move Next" },
            m = { "<cmd>BufferMovePrevious<CR>", "Move Previous" },
            
            p = {
                name = "Pinned Buffers",
                p = { "<cmd>BufferPin<CR>", "Pin Buffer" },
                x = { "<cmd>BufferCloseAllButPinned<CR>", "Close All But Pinned" } 
            }
        },

        -- Telescope
        t = {
            name = "Telescope",
            w = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
            f = { "<cmd>Telescope fd<CR>", "Find Files" },
            c = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Find In Current Buffer" },
            b = { "<cmd>Telescope buffers<CR>", "Buffers" },
            k = { "<cmd>Telescope keymaps<CR>", "Keymaps" }
        },

        g = {
            name = "Git",
            b = { "<cmd>Gitsigns blame_line<CR>", "Blame Line" },
            d = { "<cmd>Gitsigns diffthis<CR>", "Diff" }
        }
    },

    -- NvimTree
    ["<C-n>"] = { "<cmd>NvimTreeToggle<CR>", "NvimTree Toggle" },

    -- Barbar (switching buffers)
    ["<TAB>"] = { "<cmd>BufferNext<CR>", "Next Buffer" },
    ["<S-TAB>"] = { "<cmd>BufferPrevious<CR>", "Previous Buffer" }
})
