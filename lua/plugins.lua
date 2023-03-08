return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- NvimTree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
          "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("nvim-tree").setup {}
            vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = function()
                require("nvim-tree.api").tree.open()
            end })
        end
    }

    -- AutoSave
    use {
        "Pocco81/auto-save.nvim",
        config = function()
             require("auto-save").setup {}
        end
    }

    -- Pure black color scheme
    use {
        "yunlingz/equinusocio-material.vim",
	    config = function()
            vim.cmd("let g:equinusocio_material_style = 'pure'")
	        vim.cmd("colorscheme equinusocio_material")
    	end
    }

    -- Compile plugins when plugins.lua is saved
    vim.cmd([[
        augroup packer_user_config
	    autocmd!
	    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
	augroup end
    ]])
end)
