
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
-- https://awesomewm.org/doc/api/classes/signals.html
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L123

screen.connect_signal("request::desktop_decoration", function(s)
	-- do something

	print('request::desktop_decoration')

end)

--- Tail: Main
--------------------------------------------------------------------------------
