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

-- config.window_background_gradient = {
-- 	orientation = "Vertical",
-- 	colors = {
--     '#0f0c29',
--     '#302b63',
--     '#24243e',
--   },
-- }

config.background = {
	{
		source = {
			-- File = "\\\\wsl.localhost\\Ubuntu\\home\\user\\.dotfiles\\imgs\\moon.png"
			File = "\\\\wsl.localhost\\Ubuntu\\home\\user\\.dotfiles\\imgs\\mountain.png"
		},
		opacity = 1.0,
		hsb = {
			brightness = 0.2,
		},
	},
	{
		source = {
			Color = "black"
		},
		opacity = 0.2,
		width = "100%",
		height = "100%"
	}
}

config.window_decorations = "RESIZE"
config.enable_scroll_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_close_confirmation = 'NeverPrompt'

config.window_background_opacity = 0.8
-- config.win32_system_backdrop = "Acrylic"

config.default_domain = 'WSL:Ubuntu'

wezterm.gui.enumerate_gpus()
for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
	if gpu.backend == "Vulkan" then
		config.webgpu_preferred_adapter = gpu
		break
	end
end

-- wezterm.on("gui-startup", function()
--   local tab, pane, window = wezterm.mux.spawn_window{}
--   window:gui_window():maximize()
-- end)

return config
