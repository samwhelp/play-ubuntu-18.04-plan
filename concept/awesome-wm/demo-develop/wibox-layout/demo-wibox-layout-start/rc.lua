
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

-- https://awesomewm.org/doc/api/documentation/03-declarative-layout.md.html
-- https://awesomewm.org/doc/api/classes/wibox.layout.align.html

-- https://awesomewm.org/doc/api/classes/wibox.widget.textclock.html
local textclock_main = wibox.widget.textclock()


screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

	-- set wallpaper
	gears.wallpaper.maximized("/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg", s)


	s.xbox = wibox ({
		screen = s,
		visible = true,
		width = 800,
		height = 36,
		bg = "#16161675",
	})

	-- https://awesomewm.org/doc/api/classes/wibox.html#wibox.widget
	s.xbox.widget = {
		layout = wibox.layout.align.horizontal,
		textclock_main,
		textclock_main,
		textclock_main,
	}

	-- https://awesomewm.org/doc/api/classes/wibox.html#wibox:setup
	-- s.xbox:setup({
	-- 	layout = wibox.layout.align.horizontal,
	-- 	textclock_main,
	-- 	textclock_main,
	-- 	textclock_main,
	-- })

	-- https://awesomewm.org/doc/api/documentation/03-declarative-layout.md.html
	-- s.xbox.widget = {
	-- 	layout = wibox.layout.align.horizontal,
	-- 	{
	-- 		widget = textclock_main,
	-- 	},
	-- 	{
	-- 		widget = textclock_main,
	-- 	},
	-- 	{
	-- 		widget = textclock_main,
	-- 	},
	-- }

end)

--
--- Tail: Main
--------------------------------------------------------------------------------
