
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")


-- Widget and layout library
local wibox = require("wibox")


-- Theme handling library
local beautiful = require("beautiful")


-- hotkeys_popup
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L19
local hotkeys_popup = require("awful.hotkeys_popup")

--https://github.com/awesomeWM/awesome/tree/master/lib/awful/hotkeys_popup/keys
--require("awful.hotkeys_popup.keys")

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


--print("gears.filesystem.get_themes_dir() = " .. gears.filesystem.get_themes_dir())

--print("gears.filesystem.get_configuration_dir() = " .. gears.filesystem.get_configuration_dir())

beautiful.init(gears.filesystem.get_configuration_dir() .. "theme/demo/theme.lua")

--
-- Tail: beautiful
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main
--

screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

	-- set wallpaper
	gears.wallpaper.maximized("/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg", s)


end)

--
--- Tail: Main
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
--- Head: Keybind
--

-- https://awesomewm.org/doc/api/libraries/awful.spawn.html
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L218

key_super = "Mod4"
key_alt = "Mod1"
key_shift = "Shift"

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, "F1", hotkeys_popup.show_help,
		{ description = "Show Help", group = "Awesome"}
	),

	awful.key(
		{ key_alt, key_shift }, "x", function() awesome.quit() end,
		{ description = "Logout", group = "Awesome"}
	),

	awful.key(
		{ key_alt, key_shift }, "c", awesome.restart,
		{ description = "Awesome Restart", group = "Awesome"}
	),

})

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_shift }, "d", function () awful.spawn("rofi -show drun -show-icons") end,
		{ description = "Rofi Show Drun", group = "Rofi"}
	),

	awful.key(
		{ key_alt, key_shift }, "r", function () awful.spawn("rofi -show run") end,
		{ description = "Rofi Show Run", group = "Rofi"}
	),

	awful.key(
		{ key_alt, key_shift }, "w", function () awful.spawn("rofi -show window -show-icons") end,
		{ description = "Rofi Show Window", group = "Rofi"}
	),

})

awful.keyboard.append_global_keybindings({
	awful.key(
		{ key_alt }, "Return", function () awful.spawn(terminal) end,
		{ description = "Terminal", group = "App"}
	),

	awful.key(
		{ key_alt, key_shift }, "t", function () awful.spawn("tilix --quake") end,
		{ description = "Tilix Quake", group = "App"}
	),

	awful.key(
		{ key_alt, key_shift }, "f", function () awful.spawn("pcmanfm-qt") end,
		{ description = "Pcmanfm-qt", group = "App"}
	),

	awful.key(
		{ key_alt, key_shift }, "g", function () awful.spawn("nautilus") end,
		{ description = "Nautilus", group = "App"}
	),

	awful.key(
		{ key_alt, key_shift }, "e", function () awful.spawn("gedit") end,
		{ description = "Gedit", group = "App"}
	),

	awful.key(
		{ key_alt, key_shift }, "b", function () awful.spawn("firefox") end,
		{ description = "Firefox", group = "App"}
	),


})

--
--- Tail: Keybind
--------------------------------------------------------------------------------
