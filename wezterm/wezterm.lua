local wezterm = require('wezterm');
local act = wezterm.action;
local config = {}

config.color_scheme = 'Batman'
config.font = wezterm.font('JetBrainsMono Nerd Font Mono', {
  weight = 'Regular',
});

config.font_size = 14
config.keys = {
  { key = 'F1', mods = 'CMD', action = act.ActivatePaneByIndex(0) },
  { key = 'F2', mods = 'CMD', action = act.ActivatePaneByIndex(1) },
  { key = 'F3', mods = 'CMD', action = act.ActivatePaneByIndex(2) },
  { key = 'F4', mods = 'CMD', action = act.ActivatePaneByIndex(3) },
  { key = 'F5', mods = 'CMD', action = act.ActivatePaneByIndex(4) },
  { key = 'F6', mods = 'CMD', action = act.ActivatePaneByIndex(5) },
  { key = 'F7', mods = 'CMD', action = act.ActivatePaneByIndex(6) },
  { key = 'F8', mods = 'CMD', action = act.ActivatePaneByIndex(7) },
  { key = 'F9', mods = 'CMD', action = act.ActivatePaneByIndex(8) },
  { key = 'F10', mods = 'CMD', action = act.ActivatePaneByIndex(9) },
  { key = 'Enter', mods = 'CMD', action = act.SplitPane {
    direction = 'Right',
    size = { Percent = 50 },
  }},

  -- Compare this with the older syntax shown in the section below
  { key = '{', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
  { key = '}', mods = 'CTRL', action = act.ActivateTabRelative(1) },
}

return config
