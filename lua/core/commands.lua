local function indent(n, expand)
    local size = 4
    if n ~= "" then size = n end

    local num = tonumber(size)
    if num then
        size = num
    end

    vim.o.expandtab = expand
    vim.o.shiftwidth = size
    vim.o.tabstop = size
end

vim.api.nvim_create_user_command("Tabs", function(v)
    indent(v.args, false)
end, { nargs = "?" })

vim.api.nvim_create_user_command("Spaces", function(v)
    indent(v.args, true)
end, { nargs = "?" })

vim.api.nvim_create_user_command("TE", function(v)
    vim.cmd("split")
    vim.cmd("term " .. v.args)
end, { nargs = "*", force = true })
