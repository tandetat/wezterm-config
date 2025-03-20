local wezterm = require('wezterm')
-- Get color from system's appearance
function scheme_for_appearance(appearance)
   if appearance:find('Dark') then
      return wezterm.color.get_builtin_schemes()['Kanagawa (Gogh)']
   else
      return require('colors.kanagawa-lotus')
   end
end

return scheme_for_appearance(wezterm.gui.get_appearance())
