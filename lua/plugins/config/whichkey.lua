local wk = require("which-key")

wk.setup {
    ignore_missing = true
}

wk.register({
    ["<leader>"] = {
        f = {
            name = "Files",
            f = { "<cmd>Telescope find_files<CR>", "Find File" },
            g = { "<cmd>Telescope live_grep<CR>", "Live Grep" }
        },
        b = {
            name = "Buffers",
            b = { "<cmd>Telescope buffers<CR>", "Find Buffers" },
            x = { "<cmd>BufDel<CR>", "Close Buffer" }
        },
        t = {
            name = "NvimTree",
            t = { "<cmd>NvimTreeToggle<CR>", "NvimTree Toggle" },
            f = { "<cmd>NvimTreeFocus<CR>", "NvimTree Focus" }
        }
    },

    g = {
        name = "Git",
        c = { "<cmd>Telescope git_commits<CR>", "Git Commits" },
        s = { "<cmd>Telescope git_status<CR>", "Git Status" },
        b = { "<cmd>Gitsigns blame_line<CR>", "Blame Line" },
        d = { "<cmd>Gitsigns diffthis<CR>", "Diff This" }
    },

    ["<TAB>"] = { "<cmd>BufferLineCycleNext<CR>" }
})
