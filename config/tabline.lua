local wezterm = require('wezterm')
local tabline = wezterm.plugin.require('https://github.com/michaelbrusegard/tabline.wez')
wezterm.plugin.update_all()
local theme = require('theme_switcher')
tabline.setup({
   options = {
      theme_overrides = require('colors.wezterm_tabline.' .. theme.color_scheme).theme_overrides,
   },
})
