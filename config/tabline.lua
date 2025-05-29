local wezterm = require('wezterm')
local tabline = wezterm.plugin.require('https://github.com/michaelbrusegard/tabline.wez')
wezterm.plugin.update_all()
local theme = require('theme_switcher')
tabline.setup({
   options = {
      sections = {
         tabline_a = { 'mode' },
         tabline_b = { 'workspace' },
         tabline_c = { ' ' },
         tab_active = {
            'index',
            { 'parent', padding = 0 },
            '/',
            { 'cwd', padding = { left = 0, right = 1 } },
            { 'zoomed', padding = 0 },
         },
         tab_inactive = { 'index', { 'process', padding = { left = 0, right = 1 } } },
         -- tabline_x = { 'ram', 'cpu' },
         -- tabline_y = { 'datetime', 'battery' },
         tabline_z = { 'domain' },
      },
      theme_overrides = require('colors.wezterm_tabline.' .. theme.color_scheme).theme_overrides,
   },
})
