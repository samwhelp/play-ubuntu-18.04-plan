
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require('gears')
local awful = require('awful')
require("awful.autofocus")


-- Widget and layout library
local wibox = require('wibox')

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Wallpaper
--

screen.connect_signal('request::wallpaper', function(s)

	print('request::wallpaper')

	-- https://awesomewm.org/apidoc/utility_libraries/gears.wallpaper.html

	gears.wallpaper.maximized('/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg', s)

end)

--
--- Tail: Wallpaper
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main
--

screen.connect_signal('request::desktop_decoration', function(s)

	print('request::desktop_decoration')

	-- https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html

	s.panel_main = awful.wibar({
		screen = s,
		visible = true,
		width = 400,
		height = 36,
		stretch = true,
		position = 'bottom',
		bg = '#161616',

	})

end)

--
--- Tail: Main
--------------------------------------------------------------------------------
