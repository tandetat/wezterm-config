local wezterm = require('wezterm')
local tabline = wezterm.plugin.require('https://github.com/michaelbrusegard/tabline.wez')
wezterm.plugin.update_all()
local theme = require('theme_switcher')
return function(config)
   tabline.setup({
      options = {
         theme_overrides = require('colors.wezterm_tabline.' .. theme.color_scheme),
      },
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
         tabline_x = {
            {
               'ram',
               cond = function()
                  return false
               end,
            },
            {
               'cpu',
               cond = function()
                  return false
               end,
            },
         },
         tabline_y = {
            {
               'datetime',
               style = '%H:%M:%S',
               cond = function()
                  return false
               end,
            },
         },
         tabline_z = { 'domain' },
      },
   })
   tabline.apply_to_config(config)
end
