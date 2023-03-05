local g = vim.g
local keymap = vim.keymap

g.neovide_scale_factor = 1.0

local change_scale_factor = function(delta)
    g.neovide_scale_factor = g.neovide_scale_factor * delta
end

keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
end)

keymap.set("n", "<C-->", function()
    change_scale_factor(1/1.25)
end)
