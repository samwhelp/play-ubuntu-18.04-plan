
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require('gears')
local awful = require('awful')
require('awful.autofocus')


-- Widget and layout library
local wibox = require('wibox')


-- Theme handling library
local beautiful = require('beautiful')

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Head: beautiful
--

-- https://awesomewm.org/apidoc/sample%20files/theme.lua.html
-- https://awesomewm.org/apidoc/theme_related_libraries/beautiful.html#init
-- https://awesomewm.org/apidoc/documentation/05-awesomerc.md.html#Variable_definitions
-- https://awesomewm.org/apidoc/documentation/06-appearance.md.html


print('gears.filesystem.get_themes_dir() = ' .. gears.filesystem.get_themes_dir())

print('gears.filesystem.get_configuration_dir() = ' .. gears.filesystem.get_configuration_dir())

beautiful.init(gears.filesystem.get_configuration_dir() .. 'theme/demo/theme.lua')

--
-- Tail: beautiful
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

-- https://awesomewm.org/doc/api/classes/wibox.html


screen.connect_signal('request::desktop_decoration', function(s)
	-- do something

	print('request::desktop_decoration')


	-- https://awesomewm.org/doc/api/classes/wibox.html#beautiful.bg_normal
	-- https://github.com/awesomeWM/awesome/blob/master/lib/wibox/init.lua#L88
	-- https://github.com/awesomeWM/awesome/blob/v4.3/lib/wibox/init.lua#L76

	print('beautiful.bg_normal = ' .. beautiful.bg_normal)
	print('beautiful["bg_normal"] = ' .. beautiful['bg_normal'])

	s.xbox = wibox ({
		screen = s,
		visible = true,
		width = 400,
		height = 32,
		-- bg = "#16161675",
	})

end)

--- Tail: Main
--------------------------------------------------------------------------------
