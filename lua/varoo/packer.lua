vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'andreasvc/vim-256noir'
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			{'nvim-lua/plenary.nvim'}
		}
	}
	use "EdenEast/nightfox.nvim"
	use "Shatur/neovim-ayu"
	use ("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
	use 'nvim-treesitter/nvim-treesitter-context'
	use "mbbill/undotree"
	use "tpope/vim-fugitive"
	use {
		'VonHeikemen/lsp-zero.nvim',
		tag = "v3.x",
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
		'echasnovski/mini.comment',
		config = function()
			require('mini.comment').setup()
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
	use 'lukas-reineke/indent-blankline.nvim'

	use 'mfussenegger/nvim-dap'
	use 'mfussenegger/nvim-dap-python'

	use 'lervag/vimtex'
	use 'postfen/clipboard-image.nvim'
	use 'alexghergh/nvim-tmux-navigation'
	use {'vlime/vlime', rtp = 'vim'}
	use 'FabijanZulj/blame.nvim'
	use 'andweeb/presence.nvim'
	-- use 'airpods69/yagp.nvim'
	use {
		"melbaldove/llm.nvim",
		requires = { "nvim-neotest/nvim-nio" },
		config = function()
			require('llm'):setup()
		end
	}
	use 'shaunsingh/nord.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use "lukas-reineke/headlines.nvim"
	use {
		'nvim-telescope/telescope-project.nvim',
		requires = {'nvim-telescope/telescope-file-browser.nvim', opt = true}
	}
	use "lewis6991/gitsigns.nvim"

	use "xiyaowong/transparent.nvim"

end)


