return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = "L3MON4D3/LuaSnip",
    config = function()
        local lsp_zero = require("lsp-zero")
        lsp_zero.extend_cmp()

        local cmp = require("cmp")
        local cmp_action = lsp_zero.cmp_action()

        cmp.setup({
            formatting = lsp_zero.cmp_format(),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<C-f>"] = cmp_action.luasnip_jump_forward(),
                ["<C-b>"] = cmp_action.luasnip_jump_backward(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item()
            })
        })
    end
}
