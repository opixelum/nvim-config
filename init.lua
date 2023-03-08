-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Import plugins
require("plugins")


-- V I M   S E T T I N G S --

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Use 4 spaces for tabs
vim.opt.tabstop = 4

-- Use 4 spaces for tabs using spaces
vim.opt.shiftwidth = 4

-- Use 4 spaces for softtabstop
vim.opt.softtabstop = 4

-- Display line numbers
vim.opt.number = true

-- Set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- E N A B L E   P L U G I N S --
require("nvim-tree").setup()
