
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
theme.layout_floating  = theme_default_dir_path .. '/layouts/floatingw.png'


return theme

--
-- Tail: Theme
--------------------------------------------------------------------------------
