plugins = {
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

}

return plugins
