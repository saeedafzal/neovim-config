local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require("lspconfig")

local lsp_servers = {
    lspconfig.sumneko_lua,
    lspconfig.tsserver,
    lspconfig.gopls,
    lspconfig.cssls,
    lspconfig.ccls,
    lspconfig.html
}

for _, i in ipairs(lsp_servers) do
    i.setup {
        capabilities = capabilities
    }
end
