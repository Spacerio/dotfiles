local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Batman'


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

config.win32_system_backdrop = "Acrylic"


return config
