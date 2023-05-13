return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    cmd = "Neotree",
    init = function()
        vim.g.neo_tree_remove_legacy_commands = true
        vim.fn.sign_define("DiagnosticSignError",
            { text = " ", texthl = "DiagnosticSignError" })
        vim.fn.sign_define("DiagnosticSignWarn",
            { text = " ", texthl = "DiagnosticSignWarn" })
        vim.fn.sign_define("DiagnosticSignInfo",
            { text = " ", texthl = "DiagnosticSignInfo" })
        vim.fn.sign_define("DiagnosticSignHint",
            { text = "", texthl = "DiagnosticSignHint" })
    end,
    opts = {
        close_if_last_window = true,

        source_selector = {
            winbar = true,
            content_layout = "center",
            sources = {
                { source = "filesystem", display_name = " Files" },
                { source = "buffers", display_name = "󰕲 Buffers" },
                { source = "git_status", display_name = " Git" }
            }
        },

        group_empty_dirs = true,
        window = { width = 30 },

        filesystem = {
            follow_current_file = true,
            hijack_netrw_behavior = "open_current",
            use_libuv_file_watcher = true
        },

        default_component_configs = {
            icon = {
                folder_empty = "󰜌",
                folder_empty_open = "󰜌"
            },
            git_status = {
                symbols = {
                    renamed  = "󰁕",
                    unstaged = "󰄱"
                }
            }
        },

        document_symbols = {
            kinds = {
                File = { icon = "󰈙", hl = "Tag" },
                Namespace = { icon = "󰌗", hl = "Include" },
                Package = { icon = "󰏖", hl = "Label" },
                Class = { icon = "󰌗", hl = "Include" },
                Property = { icon = "󰆧", hl = "@property" },
                Enum = { icon = "󰒻", hl = "@number" },
                Function = { icon = "󰊕", hl = "Function" },
                String = { icon = "󰀬", hl = "String" },
                Number = { icon = "󰎠", hl = "Number" },
                Array = { icon = "󰅪", hl = "Type" },
                Object = { icon = "󰅩", hl = "Type" },
                Key = { icon = "󰌋", hl = "" },
                Struct = { icon = "󰌗", hl = "Type" },
                Operator = { icon = "󰆕", hl = "Operator" },
                TypeParameter = { icon = "󰊄", hl = "Type" },
                StaticMethod = { icon = '󰠄 ', hl = 'Function' }
            }
        }
    }
}
