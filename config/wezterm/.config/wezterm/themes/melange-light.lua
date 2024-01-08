local wezterm = require("wezterm")
local color_util = wezterm.color

return {
	name = "MelangeLight",
	color_schemes = {
		foreground = "#54433A",
		background = "#F1F1F1",
		ansi = {
			"#292522",
			"#BF0021",
			"#3A684A",
			"#A06D00",
			"#465AA4",
			"#904180",
			"#3D6568",
			"#F1F1F1",
		},
    brights = {
			"#292522",
			"#BF0021",
			"#3A684A",
			"#A06D00",
			"#465AA4",
			"#904180",
			"#3D6568",
			"#F1F1F1",
    }
	},
	tab_bar = {
		active_tab = {
			bg_color = "#F1F1F1",
			fg_color = "#54433A",
		},
		inactive_tab = {
			bg_color = color_util.parse("#F1F1F1"):desaturate(0.2):darken(0.09),
			fg_color = "#A98A78",
		},
		inactive_tab_hover = {
			bg_color = "#F1F1F1",
			fg_color = "#54433A",
			italic = true,
		},
		new_tab = {
			bg_color = color_util.parse("#F1F1F1"):desaturate(0.2):darken(0.09),
			fg_color = "#403A36",
		},
		new_tab_hover = {
			bg_color = "#F1F1F1",
			fg_color = "#54433A",
			italic = true,
		},
	},
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 0.8,
	},
}
