
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
--- Head: Main


screen.connect_signal('request::desktop_decoration', function(s)
	-- do something

	-- print('request::desktop_decoration')


	print('beautiful.some_property = ' .. beautiful.some_property)
	print('beautiful["some_property"] = ' .. beautiful['some_property'])



end)

--- Tail: Main
--------------------------------------------------------------------------------
