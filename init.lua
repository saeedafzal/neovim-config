-- Core configuration
require "core"

-- Vimwiki
vim.g.vimwiki_list = {
    { path = "~/Documents/Notes", index = "index" }
}

-- Theme
vim.cmd [[
    hi Normal guibg=none
    hi NonText guibg=none
    hi Normal ctermbg=none
    hi NonText ctermbg=none
]]
