
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main

-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html
-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#maximized
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L118

screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

	-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#maximized
	gears.wallpaper.maximized("/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg", s)


end)

--- Tail: Main
--------------------------------------------------------------------------------
