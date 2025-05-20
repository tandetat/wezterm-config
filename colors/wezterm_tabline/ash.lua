local M = {}

-- Import wezterm colorscheme and raw colors from ash theme
local ash = {
   none = 'NONE',
   text = '#9c9eb4',
   subtext1 = '#a6adc3',
   subtext0 = '#9399ad',
   overlay2 = '#7f8497',
   overlay1 = '#686c7d',
   overlay0 = '#646782',
   surface2 = '#555873',
   surface1 = '#31323c',
   surface0 = '#1e2122',
   base = '#0a0a0c',
   mantle = '#020203',
   crust = '#000000',
   seafoam = '#8dd3c3',
   rose = '#e77f88',
   ember = '#d08770',
   storm = '#8796aa',
   crimson = '#bf616a',
   rust = '#bc735c',
   frost = '#96a8ad',
   sage = '#9db89c',
   tide = '#79a0aa',
   slate = '#7c7d8c',
   drift = '#8d9da1',
   charcoal = '#636778',
   fog = '#a0a0af',
}
M.theme_overrides = {
   normal_mode = {
      a = { fg = ash.surface2, bg = ash.crimson }, -- ui.bg_p2, modes.normal
      b = { fg = ash.crimson, bg = ash.surface2 }, -- modes.normal, ui.bg_p2
      c = { fg = ash.overlay2, bg = ash.surface0 }, -- ui.fg_gray, ui.bg_statusline
   },
   copy_mode = { -- insert mode colors
      a = { fg = ash.surface2, bg = ash.sage }, -- ui.bg_p2, modes.insert
      b = { fg = ash.sage, bg = ash.surface2 }, -- modes.insert, ui.bg_p2
      c = { fg = ash.overlay2, bg = ash.surface0 }, -- ui.fg_gray, ui.bg_statusline
   },
   search_mode = { -- visual mode colors
      a = { fg = ash.surface2, bg = ash.seafoam }, -- ui.bg_p2, modes.visual
      b = { fg = ash.seafoam, bg = ash.surface2 }, -- modes.visual, ui.bg_p2
      c = { fg = ash.overlay2, bg = ash.surface0 }, -- ui.fg_gray, ui.bg_statusline
   },
   window_mode = {
      a = { fg = ash.surface2, bg = ash.ember }, -- ui.bg_p2, accent.accent1
      b = { fg = ash.ember, bg = ash.surface2 }, -- accent.accent1, ui.bg_p2
      c = { fg = ash.overlay2, bg = ash.surface0 }, -- ui.fg_gray, ui.bg_statusline
   },
   resize_mode = {
      a = { fg = ash.surface2, bg = ash.rose }, -- ui.bg_p2, accent.accent2
      b = { fg = ash.rose, bg = ash.surface2 }, -- accent.accent2, ui.bg_p2
      c = { fg = ash.overlay2, bg = ash.surface0 }, -- ui.fg_gray, ui.bg_statusline
   },
   tab = {
      active = {
         fg = ash.crimson, -- modes.normal
         bg = ash.base, -- ui.tabline.bg_selected
         bold = true,
      },
      inactive = {
         fg = ash.overlay2, -- ui.fg_gray
         bg = ash.surface0, -- ui.bg_statusline
      },
      inactive_hover = {
         fg = ash.text, -- ui.tabline.fg_alternate
         bg = ash.base, -- ui.tabline.bg_selected
      },
   },
}

return M
