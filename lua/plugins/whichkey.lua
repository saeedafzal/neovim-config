local function config()
    local wk = require("which-key")

    wk.register({
        ["<leader>"] = {
            -- Finders
            f = {
                name = "Finders",
                f = { "<cmd>Telescope find_files<CR>", "Find files" },
                w = { "<cmd>Telescope live_grep<CR>", "Text grep" },
                s = { "<cmd>Telescope spell_suggest<CR>", "Spell suggest" },
                t = { "<cmd>TodoTelescope<CR>", "Todos" },
                b = { "<cmd>Telescope buffers<CR>", "Buffers" },
                ["."] = { "<cmd>Telescope keymaps<CR>", "Keymaps" }
            },

            -- Git
            g = {
                name = "Git",
                b = { "<cmd>Gitsigns blame_line<CR>", "Blame line" },
                d = { "<cmd>Gitsigns diffthis<CR>", "Diff" },
                D = { "<cmd>DiffviewOpen<CR>", "Diff view & merge tool" },
                C = { "<cmd>DiffviewClose<CR>", "Close diffview & merge tool" }
            },

            -- LSP
            l = {
                name = "LSP",
                f = { "<cmd>lua vim.lsp.buf.format { async = true }<CR>", "Format" },
                a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
                r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" }
            },

            -- Spectre
            r = {
                name = "Spectre",
                r = { "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", "Search & Replace" },
                R = { "<cmd>lua require('spectre').toggle()<CR>", "Replace All" }
            },

            -- Buffers
            b = { "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<CR>", "Buffer Manager" },

            -- Misc
            h = { "<cmd>noh<CR>", "No highlight" },
            s = { "<cmd>SymbolsOutline<CR>", "Symbols outline" },
            t = { "<cmd>TroubleToggle<CR>", "Toggle trouble" }
        },

        g = {
            d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "definition" },
            t = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "type definition" }
        },

        -- Find in file
        ["<C-f>"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Find in file" },

        -- Misc
        K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" }
    })
end

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        local o = vim.o
        o.timeout = true
        o.timeoutlen = 300
    end,
    config = config,
    opts = {
        ignore_missing = true,
        key_labels = {
            ["<space>"] = "SPC"
        }
    }
}
