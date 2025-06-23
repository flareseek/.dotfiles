local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.window_frame = { font_size = 12 }

config.font_size = 16
config.window_background_opacity = 0.8

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.default_cwd = wezterm.home_dir .. "/Developer"
config.font = wezterm.font('D2CodingLigature Nerd Font Mono')
config.send_composed_key_when_left_alt_is_pressed = false
return config
