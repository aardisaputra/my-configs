local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.color_scheme = 'Bamboo Light'
config.font = wezterm.font("DaddyTimeMono Nerd Font Mono", { weight = "Bold", stretch = "Normal", style = "Normal" })
config.font_size = 13
config.default_cursor_style = "BlinkingBar"
config.window_padding = {
  left = 15,
  right = 15,
  top = 10,
  bottom = 10,
}

config.background = {
  {
    source = { File = wezterm.home_dir .. "/Downloads/paper-texture.jpg" },
    hsb = { brightness = 1.6 },
    opacity = 0.95,
  },
}

return config
