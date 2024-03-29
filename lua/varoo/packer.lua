vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 
			{'nvim-lua/plenary.nvim'} 
		}
	}
	use "EdenEast/nightfox.nvim"
	use ("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
	use 'nvim-treesitter/nvim-treesitter-context'
	use "mbbill/undotree"
	use "tpope/vim-fugitive"
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
			{'honza/vim-snippets'},
		}
	}

	use "windwp/nvim-autopairs"
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use "folke/zen-mode.nvim"
	use "folke/twilight.nvim"

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		'chipsenkbeil/distant.nvim',
		branch = 'v0.3',
		config = function()
			require('distant'):setup()
		end
	}

	use 'epwalsh/obsidian.nvim'

	use 'mfussenegger/nvim-dap'
	use 'mfussenegger/nvim-dap-python'

	use 'lervag/vimtex'
	use 'postfen/clipboard-image.nvim'
	use 'alexghergh/nvim-tmux-navigation'
	use {'vlime/vlime', rtp = 'vim'}
	use 'FabijanZulj/blame.nvim'
	use 'andweeb/presence.nvim'
	-- use 'airpods69/yagp.nvim'


end)

