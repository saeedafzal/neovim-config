local plugins = require("plugins.mappings")

local function map(mode, key, cmd, options)
    options = options or { noremap = true }
    vim.api.nvim_set_keymap(mode, key, cmd, options)
end

local M = {}

M.bufdel = function()
    map("n", plugins.bufdel.closeBuffer, ":BufDel <CR>")
end

M.bufferline = function()
    local m = plugins.bufferline

    -- map("n", m.nextBuffer, ":BufferLineCycleNext <CR>")
end

M.gitsigns = function()
    -- map("n", m.blameLine, ":Gitsigns blame_line <CR>")
    -- map("n", m.diffThis, ":Gitsigns diffthis <CR>")
end

M.nvimtree = function()
    -- map("n", m.toggle, ":NvimTreeToggle <CR>")
    -- map("n", m.focus, ":NvimTreeFocus <CR>")
end

M.telescope = function()
    -- map("n", m.buffers, ":Telescope buffers <CR>")
    -- map("n", m.liveGrep, ":Telescope live_grep <CR>")
    -- map("n", m.files, ":Telescope find_files <CR>")
    -- map("n", m.gitCommits, ":Telescope git_commits <CR>")
    -- map("n", m.gitStatus, ":Telescope git_status <CR>")
end

return M
