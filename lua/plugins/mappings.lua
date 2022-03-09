local M = {}

M.bufdel = {
    closeBuffer = "<leader>x"
}

M.bufferline = {
    nextBuffer = "<TAB>",
    prevBuffer = "<S-Tab"
}

M.gitsigns = {
    blameLine = "<leader>gb",
    diffThis = "<leader>gd"
}

M.nvimtree = {
    toggle = "<C-n>",
    focus = "<leader>e"
}

M.telescope = {
    buffers = "<leader>fb",
    diagnostics = "<leader>fd",
    liveGrep = "<leader>fw",
    files = "<leader>ff",
    gitCommits = "<leader>fgc",
    gitStatus = "<leader>fgs"
}

return M
