local mason = require("mason-lspconfig")
local lsp = require("lspconfig")

mason.setup{}

mason.setup_handlers {
    function (server_name)
        lsp[server_name].setup{}
    end
}
