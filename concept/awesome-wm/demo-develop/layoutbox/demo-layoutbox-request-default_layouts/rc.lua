

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
--- Head: request::default_layouts
--

-- https://awesomewm.org/apidoc/core_components/tag.html#request::default_layouts
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L408

tag.connect_signal('request::default_layouts', function()

	awful.layout.append_default_layouts({
		awful.layout.suit.tile,
		awful.layout.suit.tile.bottom,
		awful.layout.suit.floating,
		awful.layout.suit.max,

		-- awful.layout.suit.tile.left,
		-- awful.layout.suit.tile.top,
		-- awful.layout.suit.fair,
		-- awful.layout.suit.fair.horizontal,
		-- awful.layout.suit.spiral,
		-- awful.layout.suit.spiral.dwindle,
		--
		-- awful.layout.suit.max.fullscreen,
		-- awful.layout.suit.magnifier,
		-- awful.layout.suit.corner.nw,

	})

end)

--
--- Tail: request::default_layouts
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

	-- https://awesomewm.org/apidoc/core_components/tag.html
	-- https://awesomewm.org/apidoc/core_components/tag.html#awful.tag.new
	-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L413

	-- awful.tag({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, s, awful.layout.layouts[1])
	-- awful.tag({ '1' }, s, awful.layout.layouts[1])
	awful.tag({ 'Primary' }, s, awful.layout.layouts[1])
	--awful.tag({ 'Primary' }, s, awful.layout.layouts[2])



	-- https://awesomewm.org/apidoc/widgets/awful.widget.layoutbox.html
	-- https://awesomewm.org/apidoc/input_handling/mouse.html
	-- https://awesomewm.org/apidoc/input_handling/awful.button.html#button

	s.layoutbox_main = awful.widget.layoutbox {
		screen  = s,
		buttons = {
			awful.button({ }, 1, function () awful.layout.inc( 1) end),
			awful.button({ }, 3, function () awful.layout.inc(-1) end),
			awful.button({ }, 4, function () awful.layout.inc( 1) end),
			awful.button({ }, 5, function () awful.layout.inc(-1) end),
		}
	}


	print(awful.layout.get())
	print('awful.layout.get().name : ' .. awful.layout.get().name)
	print('awful.layout.getname() : ' .. awful.layout.getname())
	-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L406
	-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L444
	-- print(awful.layout.layouts[1])
	-- print(awful.layout.layouts[1].name)

	-- https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html

	s.panel_main = awful.wibar({
		screen = s,
		visible = true,
		width = 400,
		height = 36,
		stretch = true,
		position = 'top',
		bg = '#16161675',
	})

	s.panel_main.widget = {
		layout = wibox.layout.align.horizontal,
		s.layoutbox_main
	}




end)

--
--- Tail: Main
--------------------------------------------------------------------------------
