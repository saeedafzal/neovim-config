return {
    "wakatime/vim-wakatime",

    {
        "nvim-java/nvim-java",
        config = function()
            require("java").setup()
            require("lspconfig").jdtls.setup {
                settings = {
                    java = {
                        configuration = {
                            runtimes = {
                                {
                                    name = "jdk-22",
                                    path = "$HOME/DEV/Languages/java/jdk-22.0.2",
                                    default = true
                                }
                            }
                        }
                    }
                }
            }
        end
    },

    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup {
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" }
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-d>"] = cmp.mapping.scroll_docs(4),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item()
                })
            }
        end
    }
}
