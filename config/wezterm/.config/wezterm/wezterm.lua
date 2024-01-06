local wezterm = require("wezterm")
local act = wezterm.action
local act_callback = wezterm.action_callback
local config = wezterm.config_builder()

local themes = require("themes")
local theme = require("themes.catpupuccinlatte")

local color_schemes = {}
for _, v in pairs(themes) do
	if v.name ~= nil then
		color_schemes[v.name] = v.color_schemes
	end
end

local user_config = {
	color_scheme = theme.name,
	font = wezterm.font("Monaspace Radon", {
		weight = "Regular",
	}),
	font_size = 14,
	line_height = 1.3,
	keys = {
		{ key = "F1", mods = "CMD", action = act.ActivatePaneByIndex(0) },
		{ key = "F2", mods = "CMD", action = act.ActivatePaneByIndex(1) },
		{ key = "F3", mods = "CMD", action = act.ActivatePaneByIndex(2) },
		{ key = "F4", mods = "CMD", action = act.ActivatePaneByIndex(3) },
		{ key = "F5", mods = "CMD", action = act.ActivatePaneByIndex(4) },
		{ key = "F6", mods = "CMD", action = act.ActivatePaneByIndex(5) },
		{ key = "F7", mods = "CMD", action = act.ActivatePaneByIndex(6) },
		{ key = "F8", mods = "CMD", action = act.ActivatePaneByIndex(7) },
		{ key = "F9", mods = "CMD", action = act.ActivatePaneByIndex(8) },
		{ key = "F10", mods = "CMD", action = act.ActivatePaneByIndex(9) },
		{ key = "K", mods = "OPT|SHIFT", action = act.AdjustPaneSize({ "Up", 5 }) },
		{ key = "J", mods = "OPT|SHIFT", action = act.AdjustPaneSize({ "Down", 5 }) },
		{ key = "W", mods = "OPT|SHIFT", action = act.DisableDefaultAssignment },
		{ key = "W", mods = "OPT|SHIFT", action = act.CloseCurrentPane({ confirm = true }) },
		{
			key = "Enter",
			mods = "OPT|SHIFT",
			action = act_callback(function(win, initial_pane)
				local initial_tab = initial_pane:tab()
				local initial_panes = initial_tab:panes_with_info()
				local initial_pane_count = #initial_panes
				local tab_height = initial_tab:get_size()["rows"]

				if initial_pane_count == 1 then
					initial_pane:split({ direction = "Right", size = 0.5 })
				else
					initial_pane:split({ direction = "Bottom", size = 0.5 })
					local panes_info = initial_tab:panes_with_info()
					local balance_height = math.floor((tab_height - (#panes_info - 2)) / (#panes_info - 1))
					for _, pane_info in ipairs(panes_info) do
						local pane_index = pane_info.index
						if pane_index > 0 then
							local pane = pane_info.pane
							local pane_height = pane:get_dimensions()["viewport_rows"]
							local amount = pane_height - balance_height
							local direction = amount < 0 and "Down" or "Up"
							win:perform_action(act.ActivatePaneByIndex(pane_index), pane)
							win:perform_action(act.AdjustPaneSize({ direction, math.abs(amount) }), pane)
							wezterm.log_info({
								pane_index = pane_index,
								pane_height = pane_height,
								amount = amount,
								direction = direction,
								tab_height = tab_height,
							})
						end
					end
				end
			end),
		},
		{ key = "{", mods = "OPT|SHIFT", action = act.ActivatePaneDirection("Prev") },
		{ key = "}", mods = "OPT|SHIFT", action = act.ActivatePaneDirection("Next") },
		{ key = "{", mods = "CTRL", action = act.ActivateTabRelative(-1) },
		{ key = "}", mods = "CTRL", action = act.ActivateTabRelative(1) },
	},
	window_decorations = "RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	window_frame = {
		active_titlebar_bg = theme.tab_bar.inactive_tab.bg_color,
		inactive_titlebar_bg = theme.tab_bar.inactive_tab.bg_color,
	},
	color_schemes = color_schemes,
	inactive_pane_hsb = theme.inactive_pane_hsb,
	colors = {
		tab_bar = theme.tab_bar,
	},
}

for k, v in pairs(user_config) do
	config[k] = v
end

return config
