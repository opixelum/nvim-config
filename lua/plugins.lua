return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- NvimTree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
          "nvim-tree/nvim-web-devicons"
        }
    }

    -- AutoSave
    use {
        "Pocco81/auto-save.nvim",
        config = function()
             require("auto-save").setup {}
        end
    }

    -- Compile plugins when plugins.lua is saved
    vim.cmd([[
        augroup packer_user_config
	    autocmd!
	    autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
    ]])
end)
