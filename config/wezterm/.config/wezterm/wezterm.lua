local wezterm = require("wezterm")
local act = wezterm.action
local act_callback = wezterm.action_callback
local mux = wezterm.mux

local config = {
	color_scheme = "Darkplus",
	font = wezterm.font("JetBrainsMono Nerd Font Mono", {
		weight = "Regular",
	}),
	font_size = 14,
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
    { key = "K", mods = "OPT|SHIFT", action = act.AdjustPaneSize { 'Up', 5 } },
    { key = "J", mods = "OPT|SHIFT", action = act.AdjustPaneSize { 'Down', 5 } },
		{
			key = "Enter",
			mods = "OPT|SHIFT",
			action = act_callback(function(win, initial_pane)
				local initial_tab = initial_pane:tab()
				local initial_panes = initial_tab:panes_with_info()
				local initial_pane_count = #initial_panes
        local tab_height = initial_tab:get_size()['rows']

				if initial_pane_count == 1 then
					initial_pane:split({ direction = "Right", size = 0.5 })
				else
          local panes = initial_tab:panes_with_info()
          local balance_size = math.floor(tab_height / (#panes - 1))
          for _, pane in ipairs(panes) do

          end
					initial_pane:split({ direction = "Bottom", size = 0.5 })
          -- wezterm.log_info {panes}

          -- local balance_size = math.floor(tab_height / (#panes - 1))
          -- for _, pane in ipairs(panes) do
          --   if pane.index > 0 then
          --     local amount = pane.height - balance_size
          --     local direction = amount < 0 and "Down" or "Up"
          --     wezterm.log_info {direction = direction, amount = amount, pane_height = pane.height, balance_height = balance_size, tab_height = tab_height}
          --     win:perform_action(act.AdjustPaneSize({ direction, math.abs(amount) }), pane.pane)
          --   end
          -- end
				end
			end),
		},
		{ key = "{", mods = "OPT|SHIFT", action = act.ActivatePaneDirection("Prev") },
		{ key = "}", mods = "OPT|SHIFT", action = act.ActivatePaneDirection("Next") },

		-- Compare this with the older syntax shown in the section below
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
	color_schemes = {
		Darkplus = {
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
		},
	},
}

return config
