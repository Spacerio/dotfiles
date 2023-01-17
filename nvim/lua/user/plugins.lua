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
			require('plugins.treesitter')
		end 
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		lazy = true,
	},

	{ 'neovim/nvim-lspconfig', lazy = true },
    { 'williamboman/mason.nvim', lazy = true },
    { 'williamboman/mason-lspconfig.nvim', lazy = true },

    -- Autocompletion

    { 'hrsh7th/nvim-cmp', lazy = true },
    { 'hrsh7th/cmp-nvim-lsp', lazy = true },
    { 'hrsh7th/cmp-buffer', lazy = true },
    { 'hrsh7th/cmp-path', lazy = true },
    { 'saadparwaiz1/cmp_luasnip', lazy = true },
    { 'hrsh7th/cmp-nvim-lua', lazy = true },

    -- Snippets
    { 'L3MON4D3/LuaSnip', lazy = true },
    { 'rafamadriz/friendly-snippets', lazy = true },

}

return plugins
