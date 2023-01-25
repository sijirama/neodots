return require('packer').startup(function(use)

	--NOTE: packer
	use 'wbthomason/packer.nvim'
	
	--NOTE: telecope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	--NOTE: todo-commentt
	    use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
				require("todo-comments").setup {}
		end}

	--NOTE: gruvbox
	use { "ellisonleao/gruvbox.nvim" }

	--NOTE: treesitter
	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	
	--NOTE: devicons
	use 'kyazdani42/nvim-web-devicons'

	--NOTE: lualine
	    use {
              'nvim-lualine/lualine.nvim',
               requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	--NOTE: harpoon (For file navigation)
	use 'theprimeagen/harpoon'

	--NOTE: undotree
	use "mbbill/undotree"
	
	--NOTE: fugitive (For git, use <leader>gs)
	use "tpope/vim-fugitive"

	--NOTE: lsp settings
	use {
		  'VonHeikemen/lsp-zero.nvim',
		    requires = {
			        -- LSP Support
				{'neovim/nvim-lspconfig'},
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},
				
				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'saadparwaiz1/cmp_luasnip'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lua'},
				
				-- Snippets
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
                                }
               }

	--NOTE: autopairs
	use  'windwp/nvim-autopairs'  

	--NOTE: indentation
	use "lukas-reineke/indent-blankline.nvim"

	--NOTE: live sever
	use 'manzeloth/live-server'
	
	--NOTE: startup
--	use {"startup-nvim/startup.nvim",
--		        config = function()
--		        	require"startup".setup(require "startup")
--		        end
--	}

    --NOTE: prettier.nvim
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

end)


