
--------------------------------------------------------------------------------
--- Head: Require
--

local awful = require("awful")
require("awful.autofocus")

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Main

-- https://awesomewm.org/doc/api/classes/screen.html
-- https://awesomewm.org/doc/api/classes/screen.html#awful.screen.connect_for_each_screen
-- https://github.com/awesomeWM/awesome/blob/v4.2/awesomerc.lua#L191

awful.screen.connect_for_each_screen(function(s)
	-- do something

	print('connect_for_each_screen')

end)

--- Tail: Main
--------------------------------------------------------------------------------
