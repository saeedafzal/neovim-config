local fn, api = vim.fn, vim.api

local modes = {
    ["n"]  = "NORMAL",
    ["v"]  = "VISUAL",
    ["V"]  = "VISUAL LINE",
    [""]  = "VISUAL BLOCK",
    ["i"]  = "INSERT",
    ["R"]  = "REPLACE",
    ["Rv"] = "VISUAL REPLACE",
    ["c"]  = "COMMAND",
    ["nt"]  = "TERMINAL"
}

local function mode()
    local current_mode = api.nvim_get_mode().mode
    return string.format(" %s ", modes[current_mode]):upper()
end

function StatusLine()
    local filename = fn.expand("%:t")
    local filetype = vim.bo.filetype
    local lineinfo = fn.line(".") .. ":" .. vim.fn.col(".")
    local percent =  fn.line(".") / fn.line("$") * 100

    return table.concat {
        mode(),
        "  ",
        filename,
        "%=%#StatusLineExtra#",
        filetype,
        "  ",
        string.format("%3.0f", percent) .. "%%  ",
        lineinfo
    }
end

vim.o.statusline = "%!luaeval('StatusLine()')"
