function color(color, transparent)
	transparent = transparent or true
	color = color or "tokyonight-night"

	if transparent then
		vim.api.nvim_set_hl(0, "Normal", {bg="none"})
		vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
		vim.api.nvim_set_hl(0, "LazyNormal", {bg="#1f2335"})
	end

	if color == "tokyonight-night" then
		require('tokyonight').setup({
			transparent = transparent,
			on_colors = function(colors)
				-- colors.bg_float = "none"
			end
		})

	end
	vim.cmd.colorscheme(color)
end

color()

