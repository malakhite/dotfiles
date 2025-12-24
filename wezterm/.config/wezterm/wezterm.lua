local wezterm = require 'wezterm'

local is_darwin <const> = wezterm.target_triple:find("darwin") ~= nil

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

if is_darwin then
  local act = wezterm.action
  -- Rebind OPT-Left, OPT-Right as ALT-b, ALT-f respectively to match Terminal.app behavior
  config.keys = {
    {
      key = 'LeftArrow',
      mods = 'OPT',
      action = act.SendKey {
        key = 'b',
        mods = 'ALT',
      },
    },
    {
      key = 'RightArrow',
      mods = 'OPT',
      action = act.SendKey { key = 'f', mods = 'ALT' },
    },
  }
end

return config
