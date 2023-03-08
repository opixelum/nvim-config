return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- NvimTree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
          'nvim-tree/nvim-web-devicons'
        }
    }
end)
