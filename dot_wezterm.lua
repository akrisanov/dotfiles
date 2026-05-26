-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
function scheme_for_appearance(appearance)
  if appearance:find("Dark") then
    return "GruvboxDarkHard"
  else
    return "Gruvbox light, soft (base16)"
  end
end

wezterm.on('window-config-reloaded', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  local appearance = window:get_appearance()
  local scheme = scheme_for_appearance(appearance)
  if overrides.color_scheme ~= scheme then
    overrides.color_scheme = scheme
    window:set_config_overrides(overrides)
  end
end)

config.window_decorations = "NONE | RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font 'Iosevka Fixed'
config.font_size = 15.0

-- and finally, return the configuration to wezterm
return config
