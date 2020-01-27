
--------------------------------------------------------------------------------
--- Head: Require
--

local gfs = require('gears.filesystem')

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Path
--

local themes_dir_path = gfs.get_themes_dir()
local theme_default_dir_path = themes_dir_path .. 'default'

print('themes_dir_path = ' .. themes_dir_path)
print('theme_default_dir_path = ' .. theme_default_dir_path)

--
-- Tail: Path
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Theme
--

local theme = {}

-- https://github.com/awesomeWM/awesome/blob/master/themes/default/theme.lua#L105
-- https://github.com/awesomeWM/awesome/blob/master/themes/default/layouts/floatingw.png
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/suit/floating.lua#L109
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/widget/layoutbox.lua#L34
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L413
theme.layout_floating  = theme_default_dir_path .. '/layouts/floatingw.png'
theme.layout_fairh = theme_default_dir_path .. '/layouts/fairhw.png'
theme.layout_fairv = theme_default_dir_path .. '/layouts/fairvw.png'
theme.layout_magnifier = theme_default_dir_path .. '/layouts/magnifierw.png'
theme.layout_max = theme_default_dir_path .. '/layouts/maxw.png'
theme.layout_fullscreen = theme_default_dir_path .. '/layouts/fullscreenw.png'
theme.layout_tilebottom = theme_default_dir_path .. '/layouts/tilebottomw.png'
theme.layout_tileleft   = theme_default_dir_path .. '/layouts/tileleftw.png'
theme.layout_tile = theme_default_dir_path .. '/layouts/tilew.png'
theme.layout_tiletop = theme_default_dir_path .. '/layouts/tiletopw.png'
theme.layout_spiral  = theme_default_dir_path .. '/layouts/spiralw.png'
theme.layout_dwindle = theme_default_dir_path .. '/layouts/dwindlew.png'
theme.layout_cornernw = theme_default_dir_path .. '/layouts/cornernww.png'
theme.layout_cornerne = theme_default_dir_path .. '/layouts/cornernew.png'
theme.layout_cornersw = theme_default_dir_path .. '/layouts/cornersww.png'
theme.layout_cornerse = theme_default_dir_path .. '/layouts/cornersew.png'

return theme

--
-- Tail: Theme
--------------------------------------------------------------------------------
