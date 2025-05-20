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
local colorscheme = {
   foreground = ash.text,
   background = ash.base,

   cursor_fg = ash.crust,
   cursor_bg = ash.rose,
   cursor_border = ash.rose,

   selection_fg = ash.text,
   selection_bg = ash.surface2,

   scrollbar_thumb = ash.surface2,

   split = ash.overlay0,

   ansi = {
      ash.surface1,
      ash.crimson,
      ash.sage,
      ash.rust,
      ash.storm,
      ash.rose,
      ash.tide,
      ash.subtext1,
   },

   brights = {
      ash.surface2,
      ash.crimson,
      ash.sage,
      ash.ember,
      ash.seafoam,
      ash.rose,
      ash.tide,
      ash.subtext0,
   },

   indexed = { [16] = ash.ember, [17] = ash.seafoam },

   -- nightbuild only
   -- compose_cursor = ash.flamingo,

   tab_bar = {
      background = ash.crust,
      active_tab = {
         bg_color = ash.base,
         fg_color = ash.slate,
      },
      inactive_tab = {
         bg_color = ash.mantle,
         fg_color = ash.surface1,
      },
      inactive_tab_hover = {
         bg_color = ash.base,
         fg_color = ash.text,
      },
      new_tab = {
         bg_color = ash.surface0,
         fg_color = ash.text,
      },
      new_tab_hover = {
         bg_color = ash.surface1,
         fg_color = ash.text,
      },
      -- fancy tab bar
      inactive_tab_edge = ash.surface0,
   },

   visual_bell = ash.surface0,
}

return colorscheme
