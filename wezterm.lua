local Config = require('config')
local wezterm = require('wezterm')
local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')
require('utils.backdrops'):set_files():random()

-- require('events.right-status').setup()
-- require('events.left-status').setup()
-- require('events.tab-title').setup()
-- require('events.new-tab-button').setup()
require('config.tabline')
local config = Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options

smart_splits.apply_to_config(config, {
   -- the default config is here, if you'd like to use the default keys,
   -- you can omit this configuration table parameter and just use
   -- smart_splits.apply_to_config(config)

   -- directional keys to use in order of: left, down, up, right
   direction_keys = { 'h', 'j', 'k', 'l' },
   -- if you want to use separate direction keys for move vs. resize, you
   -- can also do this:
   -- modifier keys to combine with direction_keys
   modifiers = {
      move = 'CTRL', -- modifier to use for pane movement, e.g. CTRL+h to move left
      resize = 'META', -- modifier to use for pane resize, e.g. META+h to resize to the left
   },
})
return config
