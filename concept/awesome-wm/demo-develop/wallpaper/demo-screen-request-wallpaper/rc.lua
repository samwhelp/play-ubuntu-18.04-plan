
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
--- Head: Wallpaper
--

-- https://awesomewm.org/apidoc/core_components/screen.html#request::wallpaper
-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html
-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#maximized
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L118
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/screen.lua#L979

screen.connect_signal("request::wallpaper", function(s)
	-- do something

	print('request::wallpaper')

	-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#maximized
	gears.wallpaper.maximized("/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg", s)


end)

--
--- Tail: Wallpaper
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main
--

-- https://awesomewm.org/apidoc/core_components/screen.html#request::desktop_decoration
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L118

screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

end)

--
--- Tail: Main
--------------------------------------------------------------------------------
