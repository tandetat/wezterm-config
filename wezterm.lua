local Config = require('config')
local wezterm = require('wezterm')
local theme = require('theme_switcher')
local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')

require('utils.backdrops')
   :set_files()
   -- :set_focus('#000000')
   :random()

local config = Config:init()
   :append(require('config.colorscheme'))
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch'))
wezterm.on('user-var-changed', function(window, pane, name, value)
   local overrides = window:get_config_overrides() or {}
   if name == 'ZEN_MODE' then
      local incremental = value:find('+')
      local number_value = tonumber(value)
      if incremental ~= nil then
         while number_value > 0 do
            window:perform_action(wezterm.action.IncreaseFontSize, pane)
            number_value = number_value - 1
         end
         overrides.enable_tab_bar = false
      elseif number_value < 0 then
         window:perform_action(wezterm.action.ResetFontSize, pane)
         overrides.font_size = nil
         overrides.enable_tab_bar = true
      else
         overrides.font_size = number_value
         overrides.enable_tab_bar = false
      end
   end
   window:set_config_overrides(overrides)
end)
smart_splits.apply_to_config(config)
require('config.tabline')(config)
config:append({
   window_decorations = 'RESIZE',
   -- tab_bar_at_bottom = true,
   hide_tab_bar_if_only_one_tab = true,
   window_frame = {
      -- no idea how to make these transparent
      inactive_titlebar_bg = 'none',
      active_titlebar_bg = 'none',
   },
   -- window_background_opacity = 0.85,
   macos_window_background_blur = 50,
})
return config.options
