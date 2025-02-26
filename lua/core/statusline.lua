local fn, api, o, bo = vim.fn, vim.api, vim.o, vim.bo

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
    local filetype = bo.filetype
    local lineinfo = fn.line(".") .. ":" .. fn.col(".")
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

o.statusline = "%!v:lua.StatusLine()"

api.nvim_set_hl(0, "StatusLine", { bg = "#1D293D", fg = "#CAD5E2" })
