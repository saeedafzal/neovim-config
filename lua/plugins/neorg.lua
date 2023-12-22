return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
                config = {
                    workspaces = {
                        notes = "~/Sync/Neorg",
                        work = "~/Sync/Work"
                    },
                    default_workspace = "notes"
                }
            }
        }
    }
}
