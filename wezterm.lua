local wezterm = require("wezterm")

return {
	font = wezterm.font("Fira Code"),
	color_scheme = "Seafoam Pastel",
	font_size = 12,
	window_background_opacity = 0.9,
	window_padding = {
		left = 4,
		right = 4,
		top = 4,
		bottom = 2,
	},
	enable_tab_bar = true,
	check_for_updates = false,
	audible_bell = "Disabled",
	initial_rows = 48,
	initial_cols = 160,
	window_decorations = "RESIZE",
}
