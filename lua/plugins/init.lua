local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
        install_path })
    print("Installing packer: close and reopen Neovim...")
end

require("plugins.setup")
require("plugins.barbar_nvimtree")

vim.cmd [[colorscheme catppuccin]]
