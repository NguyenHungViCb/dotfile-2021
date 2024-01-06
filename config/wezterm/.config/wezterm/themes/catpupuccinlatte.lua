local wezterm = require("wezterm")
local color_util = wezterm.color

return {
	name = "CatpupuccinLatte",
	color_schemes = {
		foreground = "#4c4f69",
		background = "#eff1f5",
		ansi = {
			"#5c5f77",
			"#e64553",
			"#179299",
			"#df8e1d",
			"#1e66f5",
			"#dd7878",
			"#209fb5",
			"#ccd0da",
		},
	},
	tab_bar = {
		active_tab = {
			bg_color = "#eff1f5",
			fg_color = "#4c4f69",
		},
		inactive_tab = {
			bg_color = color_util.parse("#eff1f5"):desaturate(0.75):darken(0.1),
			fg_color = "#6c6f85",
		},
		inactive_tab_hover = {
			bg_color = "#ccd0da",
			fg_color = "#6c6f85",
			italic = true,
		},
		new_tab = {
			bg_color = color_util.parse("#eff1f5"):desaturate(0.75):darken(0.1),
			fg_color = "#6c6f85",
		},
		new_tab_hover = {
			bg_color = "#ccd0da",
			fg_color = "#6c6f85",
			italic = true,
		},
	},
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 0.8,
	},
}
