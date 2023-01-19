local plugins = {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require('user.color')
		end

	},

	{ 'nvim-lua/plenary.nvim' },
	{ 'nvim-telescope/telescope.nvim' },

	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		priority = 10,
		config = function()
			require('user.plugins.treesitter')
		end
	},

	{ 'nvim-tree/nvim-web-devicons' },
	{ 'muniftanjim/nui.nvim' },
	{ 'nvim-neo-tree/neo-tree.nvim' },


	{ 'folke/trouble.nvim' },

	--LSP
	{ 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    -- Autocompletion
	{ 'hrsh7th/nvim-cmp',
		config = function()
			require('user.lsp')
		end
	},
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'hrsh7th/cmp-nvim-lua' },
	{ 'kadobot/cmp-plugins', config = function ()
		require('cmp-plugins').setup({
			--files = { "/home/user/.dotfiles/nvim/lua/user/plugins.lua" }
			files = { ".*\\.lua" }
		})
		end
	},

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
}

return plugins
