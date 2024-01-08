local wezterm = require("wezterm")
local color_util = wezterm.color

return {
	name = "MelangeDark",
	color_schemes = {
		foreground = "#ECE1D7",
		background = "#292522",
		ansi = {
			"#292522",
			"#D47766",
			"#85B695",
			"#EBC06D",
			"#A3A9CE",
			"#CF9BC2",
			"#89B3B6",
			"#ECE1D7",
		},
    brights = {
			"#867462",
			"#D47766",
			"#85B695",
			"#EBC06D",
			"#A3A9CE",
			"#CF9BC2",
			"#89B3B6",
			"#ECE1D7",
    }
	},
	tab_bar = {
		active_tab = {
			bg_color = "#292522",
			fg_color = "#ECE1D7",
		},
		inactive_tab = {
			bg_color = color_util.parse("#292522"):desaturate(0.1):darken(0.1),
			fg_color = "#867462",
		},
		inactive_tab_hover = {
			bg_color = "#34302C",
			fg_color = "#ECE1D7",
			italic = true,
		},
		new_tab = {
			bg_color = color_util.parse("#292522"):desaturate(0.75):darken(0.1),
			fg_color = "#403A36",
		},
		new_tab_hover = {
			bg_color = "#34302C",
			fg_color = "#ECE1D7",
			italic = true,
		},
	},
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 0.8,
	},
}
