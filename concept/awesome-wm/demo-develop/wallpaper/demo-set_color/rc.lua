
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
-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#set
-- https://awesomewm.org/doc/api/libraries/gears.color.html

screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

	-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#set
	--gears.wallpaper.set("#FF0000")
	--gears.wallpaper.set("#00FF00")
	--gears.wallpaper.set("#0000FF")
	--gears.wallpaper.set("#EEE")
	--gears.wallpaper.set("#161616")
	gears.wallpaper.set("#606060")


end)

--- Tail: Main
--------------------------------------------------------------------------------
