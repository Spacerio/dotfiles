function color(color, transparent)
	transparent = transparent or true
	color = color or "tokyonight-night"

	if color == "tokyonight-night" then
		require('tokyonight').setup({
			transparent_backround = true,
		})
	end

	if color == "catppuccin" then
		require('catppuccin').setup({
			transparent = true,
		})
	end

	vim.cmd.colorscheme(color)

	if transparent then
		vim.api.nvim_set_hl(0, "Normal", {bg="none"})
		vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
		vim.api.nvim_set_hl(0, "NormalNC", {bg="none"})
		vim.api.nvim_set_hl(0, "LazyNormal", {bg="#513c69"})
	end
end

color()
