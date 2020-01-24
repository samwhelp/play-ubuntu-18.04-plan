
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")


-- Widget and layout library
local wibox = require("wibox")

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main
--

-- https://awesomewm.org/doc/api/classes/wibox.html


screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

	-- set wallpaper
	gears.wallpaper.maximized("/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg", s)


	s.xbox = wibox ({
		screen = s,
		visible = true,
		width = 400,
		height = 36,
		bg = "#161616",
	})

end)

--
--- Tail: Main
--------------------------------------------------------------------------------
