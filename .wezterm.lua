local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.keys = {
	{
		key = 'B',
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = 'R',
		mods = "SHIFT|CTRL",
		action = wezterm.action.ReloadConfiguration
	}
}

config.window_background_gradient = {
	orientation = "Vertical",
	colors = {
    '#0f0c29',
    '#302b63',
    '#24243e',
  },
}

config.window_decorations = "RESIZE"
config.enable_scroll_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.8
config.win32_system_backdrop = "Acrylic"

config.default_domain = 'WSL:Ubuntu'

return config
