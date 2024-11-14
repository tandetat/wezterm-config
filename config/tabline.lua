local wezterm = require('wezterm')
local Config = require('config')
local tabline = wezterm.plugin.require('https://github.com/michaelbrusegard/tabline.wez')
tabline.setup({ options = {
   theme = 'Tokyo Night',
} })
-- tabline.apply_to_config(Config)
