local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Gruvbox dark, medium (base32)'
config.font = wezterm.font_with_fallback({
  "JetBrains Mono",
  "Noto Color Emoji",
  "Symbols Nerd Font",
})
config.font_size = 15
config.initial_cols = 120
config.initial_rows = 28
config.window_close_confirmation = 'NeverPrompt'

return config
