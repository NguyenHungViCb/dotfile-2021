local wezterm = require("wezterm")
local color_util = wezterm.color

return {
	name = "Darkplus",
  color_schemes = {
    foreground = "#D4D4D4",
    background = "#1E1E1E",
    ansi = {
      "#181818",
      "#D16969",
      "#6A9955",
      "#D7BA7D",
      "#569CD6",
      "#D16D9E",
      "#4EC9B0",
      "#abb2bf",
    },
    brights = {
      "#404040",
      "#D16969",
      "#6A9955",
      "#D7BA7D",
      "#569CD6",
      "#D16D9E",
      "#4EC9B0",
      "#abb2bf",
    }
  },
	tab_bar = {
		active_tab = {
			bg_color = "#1E1E1E",
			fg_color = "#D4D4D4",
		},
		inactive_tab = {
			bg_color = color_util.parse("#1E1E1E"):darken(0.25),
			fg_color = "#808080",
		},
		inactive_tab_hover = {
			bg_color = "#1E1E1E",
			fg_color = "#D4D4D4",
			italic = true,
		},
		new_tab = {
			bg_color = color_util.parse("#1E1E1E"):darken(0.25),
			fg_color = "#808080",
		},
		new_tab_hover = {
			bg_color = "#1E1E1E",
			fg_color = "#D4D4D4",
			italic = true,
		},
	},
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 0.6,
	},
}
