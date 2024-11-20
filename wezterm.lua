local Config = require('config')
local wezterm = require('wezterm')
local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')

require('utils.backdrops')
   :set_files()
   -- :set_focus('#000000')
   :random()

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
   :append(require('config.launch'))

smart_splits.apply_to_config(config)
return config.options
