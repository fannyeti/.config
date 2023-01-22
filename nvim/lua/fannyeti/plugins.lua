vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use { 'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    }
    --[[   use { 'windwp/nvim-ts-autotag',
        config = function()
            require("nvim-ts-autotag").setup()
        end }
    use { 'windwp/nvim-autopairs',
        config = function()
            require("nvim-autopairs").setup()
        end } ]]

    -- lsp
    use('jose-elias-alvarez/null-ls.nvim')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    -- use("glepnir/lspsaga.nvim")

    -- tools
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use { 'phaazon/hop.nvim',
        config = function()
            require('hop').setup()
        end }
    use('tpope/vim-surround')
    use('folke/zen-mode.nvim')
    use('nvim-lualine/lualine.nvim')
    use('tpope/vim-fugitive')
    --[[ use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require("gitsigns").setup()
        end
    }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim',
        config = function()
            require("diffview").setup()
        end
    } ]]

    --themes
    use("ellisonleao/gruvbox.nvim")
    use({
        "svrana/neosolarized.nvim",
        requires = {
            "tjdevries/colorbuddy.nvim",
        },
    })
    use('https://gitlab.com/__tpb/acme.nvim')
    use('stefanvanburen/rams.vim')
    --use('jaredgorski/Mies.vim')
    --use('YorickPeterse/vim-paper')

    --others
    use { 'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }
end)
