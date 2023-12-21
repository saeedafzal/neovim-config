return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
        local lspconfig = require("lspconfig")
        local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

        local defaultSetup = function(server)
            lspconfig[server].setup {
                capabilities = lsp_capabilities
            }
        end

        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = {},
            handlers = { defaultSetup }
        }
    end
}
