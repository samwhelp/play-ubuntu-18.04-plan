

--------------------------------------------------------------------------------
--- Head: luarocks
--

-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, 'luarocks.loader')

--
-- Tail: luarocks
--------------------------------------------------------------------------------


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
-- Notification library
local naughty = require('naughty')
local menubar = require('menubar')
local hotkeys_popup = require('awful.hotkeys_popup')
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
--require('awful.hotkeys_popup.keys')

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Error handling
--

-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
naughty.connect_signal('request::display_error', function(message, startup)
	naughty.notification {
		urgency = 'critical',
		title   = 'Oops, an error happened'..(startup and ' during startup!' or '!'),
		message = message
	}
end)

--
-- Tail: Error handling
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

beautiful.init(gears.filesystem.get_configuration_dir() .. 'theme/experiment/theme.lua')

-- Themes define colours, icons, font and wallpapers.
--beautiful.init(gears.filesystem.get_themes_dir() .. 'default/theme.lua')
--beautiful.init(gears.filesystem.get_themes_dir() .. 'gtk/theme.lua')

-- Wallpaper
--beautiful.wallpaper = '/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg'
beautiful.wallpaper = '/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg'


--
-- Tail: beautiful
--------------------------------------------------------------------------------


-- {{{ Variable definitions

-- This is used later as the default terminal and editor to run.
terminal = 'sakura'
editor = os.getenv('EDITOR') or 'vi'
editor_cmd = terminal .. ' -e ' .. editor

-- Default key_super.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
key_super = 'Mod4'
key_alt = 'Mod1'
key_shift = 'Shift'
key_ctrl = 'Control'
-- }}}

-- {{{ Menu
-- Create a launcher widget and a main menu
menu_awesome = {
	{ 'Hotkeys', function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
	{ 'Manual', terminal .. ' -e man awesome' },
	{ 'Edit config', editor_cmd .. ' ' .. awesome.conffile },
	{ 'Restart', awesome.restart },
	{ 'Quit', function() awesome.quit() end },
}

menu_exit = {
	{ 'Reboot', 'reboot' },
	{ 'Shutdown', 'shutdown now' },
	{ 'Switch user', 'dm-tool switch-to-greeter' },
	{ 'Suspend', 'systemctl suspend' },
	{ 'Log out', function() awesome.quit() end },
}

menu_main = awful.menu({ items = {
	{ 'Awesome', menu_awesome, beautiful.awesome_icon },
	{ 'Terminal', terminal },
	{ 'File', 'pcmanfm-qt' },
	{ 'Web', 'firefox' },
	{ 'Editor', 'mousepad' },
	-- { 'Rofi Drun', function() awful.spawn.with_shell('rofi -show drun -show-icons') end},
	{ 'Exit', menu_exit },
}})

launcher_main = awful.widget.launcher({
	image = beautiful.awesome_icon,
	menu = menu_main,
})

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

-- {{{ Tag
-- Table of layouts to cover with awful.layout.inc, order matters.
tag.connect_signal('request::default_layouts', function()
	awful.layout.append_default_layouts({
		awful.layout.suit.tile,
		awful.layout.suit.tile.bottom,
		awful.layout.suit.floating,
		awful.layout.suit.max,
		-- awful.layout.suit.tile.left,
		--awful.layout.suit.tile.top,
		--awful.layout.suit.fair,
		--awful.layout.suit.fair.horizontal,
		--awful.layout.suit.spiral,
		-- awful.layout.suit.spiral.dwindle,
		-- awful.layout.suit.max.fullscreen,
		-- awful.layout.suit.magnifier,
		-- awful.layout.suit.corner.nw,
	})

	-- awful.layout.append_default_layouts({
	-- 	awful.layout.suit.floating,
	-- 	awful.layout.suit.spiral.dwindle,
	-- 	awful.layout.suit.max,
	-- 	awful.layout.suit.tile,
	-- 	awful.layout.suit.tile.left,
	-- 	awful.layout.suit.tile.bottom,
	-- 	awful.layout.suit.tile.top,
	-- 	awful.layout.suit.fair,
	-- 	awful.layout.suit.fair.horizontal,
	-- 	awful.layout.suit.spiral,
	-- 	-- awful.layout.suit.max.fullscreen,
	-- 	awful.layout.suit.magnifier,
	-- 	awful.layout.suit.corner.nw,
	-- })

end)
-- }}}

-- {{{ Wibar

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- Create a textclock widget
mytextclock = wibox.widget.textclock()

screen.connect_signal('request::wallpaper', function(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == 'function' then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end)

screen.connect_signal('request::desktop_decoration', function(s)
	-- Each screen has its own tag table.
	-- awful.tag({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, s, awful.layout.layouts[1])
	awful.tag({ 'Term', 'Edit', 'File', 'Web', 'Misc', 'Free'}, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox {
        screen  = s,
        buttons = {
            awful.button({ }, 1, function () awful.layout.inc( 1) end),
            awful.button({ }, 3, function () awful.layout.inc(-1) end),
            awful.button({ }, 4, function () awful.layout.inc( 1) end),
            awful.button({ }, 5, function () awful.layout.inc(-1) end),
        }
    }

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = {
            awful.button({ }, 1, function(t) t:view_only() end),
            awful.button({ key_super }, 1, function(t)
                                            if client.focus then
                                                client.focus:move_to_tag(t)
                                            end
                                        end),
            awful.button({ }, 3, awful.tag.viewtoggle),
            awful.button({ key_super }, 3, function(t)
                                            if client.focus then
                                                client.focus:toggle_tag(t)
                                            end
                                        end),
            awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
            awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end),
        }
    }

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
        screen  = s,
        filter  = awful.widget.tasklist.filter.currenttags,
        buttons = {
            awful.button({ }, 1, function (c)
                c:activate { context = 'tasklist', action = 'toggle_minimization' }
            end),
            awful.button({ }, 3, function() awful.menu.client_list { theme = { width = 250 } } end),
            awful.button({ }, 4, function() awful.client.focus.byidx( 1) end),
            awful.button({ }, 5, function() awful.client.focus.byidx(-1) end),
        }
    }

    -- Create the wibox
    s.mywibox = awful.wibar({ position = 'top', screen = s })

    -- Add widgets to the wibox
    s.mywibox.widget = {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            launcher_main,
            s.mytaglist,
            s.mypromptbox,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            mykeyboardlayout,
            wibox.widget.systray(),
            mytextclock,
            s.mylayoutbox,
        },
    }
end)
-- }}}

-- {{{ Mouse bindings
awful.mouse.append_global_mousebindings({
    awful.button({ }, 3, function () menu_main:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev),
})
-- }}}

-- {{{ Key bindings


--------------------------------------------------------------------------------
--- Head: Keybind / Rofi
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_shift }, 'r', function () awful.spawn('rofi -show run') end,
		{ description = 'Rofi Show Run', group = 'Rofi'}
	),

	awful.key(
		{ key_alt, key_shift }, 'd', function () awful.spawn('rofi -show drun -show-icons') end,
		{ description = 'Rofi Show Drun', group = 'Rofi'}
	),

	awful.key(
		{ key_alt, key_shift }, 'w', function () awful.spawn('rofi -show window -show-icons') end,
		{ description = 'Rofi Show Window', group = 'Rofi'}
	),

})

--
--- Tail: Keybind / Rofi
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Application
--

awful.keyboard.append_global_keybindings({
	awful.key(
		{ key_alt }, 'Return', function () awful.spawn(terminal) end,
		{ description = 'Terminal', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 't', function () awful.spawn('tilix --quake') end,
		{ description = 'Tilix Quake', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'f', function () awful.spawn('pcmanfm-qt') end,
		{ description = 'Pcmanfm-qt', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'g', function () awful.spawn('nautilus') end,
		{ description = 'Nautilus', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'e', function () awful.spawn('gedit') end,
		{ description = 'Gedit', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'b', function () awful.spawn('firefox') end,
		{ description = 'Firefox', group = 'App'}
	),

})

--
--- Tail: Keybind / Application
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Awesome
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, 'F1', hotkeys_popup.show_help,
		{ description = 'Hotkeys', group = 'Awesome'}
	),

	awful.key(
		{ key_alt, key_shift }, 'x', function() awesome.quit() end,
		{ description = 'Logout', group = 'Awesome'}
	),

	awful.key(
		{ key_alt, key_shift }, 'c', awesome.restart,
		{ description = 'Awesome Restart', group = 'Awesome'}
	),

	awful.key(
		{ key_super }, 'space', function () menu_main:show() end,
		{ description = 'Show Main Menu', group = 'Awesome'}
	),

	awful.key(
		{ key_super }, 'c', function() awful.menu.client_list { theme = { width = 250 } } end,
		{ description = 'Show Client List', group = 'Awesome'}
	),


})

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'F3', function ()
			awful.prompt.run {
				prompt       = 'Run Lua code: ',
				textbox      = awful.screen.focused().mypromptbox.widget,
				exe_callback = awful.util.eval,
				history_path = awful.util.get_cache_dir() .. '/history_eval'
			}
		end,
		{description = 'lua execute prompt', group = 'Awesome'}
	),

	awful.key(
		{ key_alt }, 'F2', function () awful.screen.focused().mypromptbox:run() end,
		{description = 'run prompt', group = 'Awesome'}
	),

	awful.key(
		{ key_alt }, 'F1', function() menubar.show() end,
		{description = 'show the menubar', group = 'Awesome'}
	),

})




--
--- Tail: Keybind / Awesome
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Layout
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'Tab', function () awful.layout.inc(1) end,
		{ description = 'Next Layout', group = 'Layout'}
	),

	awful.key(
		{ key_alt, key_shift }, 'Tab', function () awful.layout.inc(-1) end,
		{ description = 'Previous Layout', group = 'Layout'}
	),

	awful.key(
		{ key_alt }, 'k', function () awful.layout.inc(-1) end,
		{ description = 'Previous Layout', group = 'Layout'}
	),

	awful.key(
		{ key_alt }, 'j', function () awful.layout.inc(1) end,
		{ description = 'Next Layout', group = 'Layout'}
	),



})

--
--- Tail: Keybind / Layout
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Tag
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'h', awful.tag.viewprev,
		{ description = 'Previous Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 'l', awful.tag.viewnext,
		{ description = 'Next Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 'p', awful.tag.history.restore,
		{ description = 'Last Tag', group = 'Tag'}
	),


	awful.key(
		{ key_alt }, 'a', awful.tag.viewprev,
		{ description = 'Previous Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 's', awful.tag.viewnext,
		{ description = 'Next Tag', group = 'Tag'}
	),

	awful.key(
		{ key_alt }, 'z', awful.tag.history.restore,
		{ description = 'Last Tag', group = 'Tag'}
	),

})


awful.keyboard.append_global_keybindings({
	awful.key {
		modifiers = { key_alt },
		keygroup = 'numrow',
		description = 'Only view tag',
		group = 'Tag',
		on_press = function (index)
			local screen = awful.screen.focused()
			local tag = screen.tags[index]
			if tag then
				tag:view_only()
			end
		end,
	},

	awful.key {
		modifiers = { key_super },
		keygroup = 'numrow',
		description = 'Move focused client to tag',
		group = 'Tag',
		on_press = function (index)
			if client.focus then
				local tag = client.focus.screen.tags[index]
				if tag then
					client.focus:move_to_tag(tag)
				end
			end
		end,
	},

	awful.key {
		modifiers   = { key_alt, key_ctrl },
		keygroup	= 'numrow',
		description = 'Toggle tag',
		group	   = 'Tag',
		on_press	= function (index)
			local screen = awful.screen.focused()
			local tag = screen.tags[index]
			if tag then
				awful.tag.viewtoggle(tag)
			end
		end,
	},

	awful.key {
		modifiers   = { key_super, key_alt, key_ctrl },
		keygroup	= 'numrow',
		description = 'Toggle focused client on tag',
		group	   = 'Tag',
		on_press	= function (index)
			if client.focus then
				local tag = client.focus.screen.tags[index]
				if tag then
					client.focus:toggle_tag(tag)
				end
			end
		end,
	}
})

--
--- Tail: Keybind / Tag
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Client
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, 'h', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'l', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'p',
		function ()
			awful.client.focus.history.previous()
			if client.focus then
				client.focus:raise()
			end
		end,
		{ description = 'Back Last Client', group = 'Client'}
	),


	awful.key(
		{ key_super }, 'a', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 's', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),


	awful.key(
		{ key_super }, 'z',
		function ()
			awful.client.focus.history.previous()
			if client.focus then
				client.focus:raise()
			end
		end,
		{ description = 'Back Last Client', group = 'Client'}
	),

})

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super, 'Control' }, 'n', function ()
			local c = awful.client.restore()
			-- Focus restored client
			if c then
				c:activate { raise = true, context = 'key.unminimize' }
			end
		end,
		{ description = 'Restore minimized', group = 'Client' }
	),

	awful.key(
		{ key_super }, 'u', awful.client.urgent.jumpto,
		{ description = 'Jump to urgent client', group = 'Client' }
	),

})


awful.keyboard.append_global_keybindings({
	awful.key(
		{ key_super, key_shift }, 'j', function () awful.client.swap.byidx(1) end,
		{ description = 'Swap with next client by index', group = 'Client'}
	),

	awful.key(
		{ key_super, key_shift }, 'k', function () awful.client.swap.byidx(-1) end,
		{ description = 'Swap with previous client by index', group = 'Client'}
	),
})

--
--- Tail: Keybind / Client
--------------------------------------------------------------------------------



-- Tags related keybindings
-- awful.keyboard.append_global_keybindings({
--     awful.key({ key_super,           }, 'Left',   awful.tag.viewprev,
--               {description = 'view previous', group = 'tag'}),
--     awful.key({ key_super,           }, 'Right',  awful.tag.viewnext,
--               {description = 'view next', group = 'tag'}),
--     awful.key({ key_super,           }, 'Escape', awful.tag.history.restore,
--               {description = 'go back', group = 'tag'}),
-- })

-- Focus related keybindings
awful.keyboard.append_global_keybindings({
    -- awful.key({ key_super,           }, 'j',
    --     function ()
    --         awful.client.focus.byidx( 1)
    --     end,
    --     {description = 'focus next by index', group = 'client'}
    -- ),
    -- awful.key({ key_super,           }, 'k',
    --     function ()
    --         awful.client.focus.byidx(-1)
    --     end,
    --     {description = 'focus previous by index', group = 'client'}
    -- ),
    -- awful.key({ key_super,           }, 'Tab',
    --     function ()
    --         awful.client.focus.history.previous()
    --         if client.focus then
    --             client.focus:raise()
    --         end
    --     end,
    --     {description = 'go back', group = 'client'}),
    awful.key({ key_super, 'Control' }, 'j', function () awful.screen.focus_relative( 1) end,
              {description = 'focus the next screen', group = 'screen'}),
    awful.key({ key_super, 'Control' }, 'k', function () awful.screen.focus_relative(-1) end,
              {description = 'focus the previous screen', group = 'screen'}),

})

-- Layout related keybindings
awful.keyboard.append_global_keybindings({
    -- awful.key({ key_super, 'Shift'   }, 'j', function () awful.client.swap.byidx(  1)    end,
    --           {description = 'swap with next client by index', group = 'client'}),
    -- awful.key({ key_super, 'Shift'   }, 'k', function () awful.client.swap.byidx( -1)    end,
    --           {description = 'swap with previous client by index', group = 'client'}),

    awful.key({ key_super,           }, 'o',     function () awful.tag.incmwfact( 0.05)          end,
              {description = 'increase master width factor', group = 'layout'}),
    awful.key({ key_super,           }, 'y',     function () awful.tag.incmwfact(-0.05)          end,
              {description = 'decrease master width factor', group = 'layout'}),
    awful.key({ key_super, 'Shift'   }, 'h',     function () awful.tag.incnmaster( 1, nil, true) end,
              {description = 'increase the number of master clients', group = 'layout'}),
    awful.key({ key_super, 'Shift'   }, 'l',     function () awful.tag.incnmaster(-1, nil, true) end,
              {description = 'decrease the number of master clients', group = 'layout'}),
    awful.key({ key_super, 'Control' }, 'h',     function () awful.tag.incncol( 1, nil, true)    end,
              {description = 'increase the number of columns', group = 'layout'}),
    awful.key({ key_super, 'Control' }, 'l',     function () awful.tag.incncol(-1, nil, true)    end,
              {description = 'decrease the number of columns', group = 'layout'}),
    -- awful.key({ key_super,           }, 'space', function () awful.layout.inc( 1)                end,
    --           {description = 'select next', group = 'layout'}),
    -- awful.key({ key_super, 'Shift'   }, 'space', function () awful.layout.inc(-1)                end,
    --           {description = 'select previous', group = 'layout'}),
})


--------------------------------------------------------------------------------
--- Head: request::default_mousebindings
--

client.connect_signal('request::default_mousebindings', function()

	awful.mouse.append_client_mousebindings({
		awful.button({ }, 1, function (c)
			c:activate { context = 'mouse_click' }
		end),
		awful.button({ key_super }, 1, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_move'  }
		end),
		awful.button({ key_super }, 3, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_resize'}
		end),
	})

end)

--
--- Tail: Client Rules
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: request::default_keybindings
--

client.connect_signal('request::default_keybindings', function()

	awful.keyboard.append_client_keybindings({
		awful.key(
			{ key_super }, 'f', function (c)
				c.fullscreen = not c.fullscreen
				c:raise()
			end,
			{ description = 'toggle fullscreen', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'q', function (c) c:kill() end,
			{ description = 'close', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'v', awful.client.floating.toggle ,
			{ description = 'toggle floating', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Control' }, 'Return', function (c) c:swap(awful.client.getmaster()) end,
			{ description = 'move to master', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'o', function (c) c:move_to_screen() end,
			{ description = 'move to screen', group = 'Client' }
		),

		awful.key(
			{ key_super }, 't', function (c) c.ontop = not c.ontop end,
			{ description = 'toggle keep on top', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'x', function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{ description = 'minimize', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'w', function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{ description = '(un)maximize', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'n', function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{ description = 'minimize', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'm', function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{ description = '(un)maximize', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Control' }, 'm', function (c)
				c.maximized_vertical = not c.maximized_vertical
				c:raise()
			end ,
			{ description = '(un)maximize vertically', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Shift' }, 'm', function (c)
				c.maximized_horizontal = not c.maximized_horizontal
				c:raise()
			end ,
			{ description = '(un)maximize horizontally', group = 'Client' }
		),
	})

end)

--
--- Tail: request::default_keybindings
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
--- Head: Client Rules
--

-- Rules to apply to new clients.
awful.rules.rules = {
	-- All clients will match this rule.
	{
		rule = { },
		properties = {
			focus = awful.client.focus.filter,
			raise = true,
			screen = awful.screen.preferred,
			placement = awful.placement.no_overlap+awful.placement.no_offscreen
		}
	},

	-- Floating clients.
	{
		rule_any = {
			instance = {
				'DTA',  -- Firefox addon DownThemAll.
				'copyq',  -- Includes session name in class.
				'pinentry',
			},
			class = {
				'Arandr',
				'Blueman-manager',
				'Gpick',
				'Kruler',
				'MessageWin',  -- kalarm.
				'Sxiv',
				'Tor Browser', -- Needs a fixed window size to avoid fingerprinting by screen size.
				'Wpa_gui',
				'veromix',
				'xtightvncviewer'
			},

			-- Note that the name property shown in xprop might be set slightly after creation of the client
			-- and the name shown there might not match defined rules here.
			name = {
				'Event Tester',  -- xev.
			},
			role = {
				'AlarmWindow',  -- Thunderbird's calendar.
				'ConfigManager',  -- Thunderbird's about:config.
				'pop-up',	   -- e.g. Google Chrome's (detached) Developer Tools.
			}
		},
		properties = { floating = true }

	},

	-- Add titlebars to normal clients and dialogs
	{
		rule_any = {
			type = {
				'normal',
				'dialog',
			}
		},
		properties = { titlebars_enabled = true }
	},

	-- Set Firefox to always map on the tag named '2' on screen 1.
	-- { rule = { class = 'Firefox' },
	--   properties = { screen = 1, tag = '2' } },

	-- {
	-- 	rule = { instance = 'sakura' },
	-- 	properties = { tag = 'Term' or '1' or 'Free' }
	-- },

	{
		rule = { instance = 'atom' },
		properties = { tag = 'Edit' or '2' or 'Free' }
	},

	{
		rule = { instance = 'pcmanfm-qt' },
		properties = { tag = 'File' or '3' or 'Free' }
	},

	{
		rule = { class = 'Firefox' },
		properties = { tag = 'Web' or '4' or 'Free'}
	},

	{
		rule = { instance = 'gimp' },
		properties = { tag = 'Misc' or '1' or 'Free' }
	},

	{
		rule = { instance = 'Xephyr' },
		properties = { tag = 'Free' or '6' or 'Misc' }
	},

}

--
--- Tail: Client Rules
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Client Titlebar
--

-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal('request::titlebars', function(c)
	-- buttons for the titlebar
	local buttons = {
		awful.button({ }, 1, function()
			c:activate { context = 'titlebar', action = 'mouse_move' }
		end),
		awful.button({ }, 3, function()
			c:activate { context = 'titlebar', action = 'mouse_resize' }
		end),
	}

	awful.titlebar(c).widget = {
		layout = wibox.layout.align.horizontal,

		-- Left
		{
			layout  = wibox.layout.fixed.horizontal,
			awful.titlebar.widget.iconwidget(c),
			buttons = buttons,
		},

		-- Middle
		{
			layout  = wibox.layout.flex.horizontal,
			{ -- Title
				align  = 'center',
				widget = awful.titlebar.widget.titlewidget(c)
			},
			buttons = buttons,

		},

		-- Right
		{
			layout = wibox.layout.fixed.horizontal(),
			awful.titlebar.widget.floatingbutton (c),
			awful.titlebar.widget.maximizedbutton(c),
			awful.titlebar.widget.stickybutton   (c),
			awful.titlebar.widget.ontopbutton	(c),
			awful.titlebar.widget.closebutton	(c),
		},

	}

end)

--
--- Tail: Client Titlebar
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Autorun
--

-- https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=361106#forumpost361106
-- /etc/xdg/autostart/
-- ~/.config/autostart

autorun = true
--autorun = false

-- Autorun programs
apps_autorun = {


	-- ## input methond
	'fcitx',

	-- ## policykit
	-- $ apt-cache serch policykit
	'/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1',
	-- 'mate-polkit',

	-- ## volume-control
	--'volumeicon',
	'mate-volume-control-applet',

	-- ## network
	'nm-applet',
	--'nm-tray',

	--'blueman-applet',

	-- ## compton
	'compton',

	-- ## screensaver
	--'xscreensaver',
	--/etc/xdg/autostart/xscreensaver.desktop
	'/usr/share/xscreensaver/xscreensaver-wrapper.sh -no-splash'
}

if autorun then
	for app = 1, #apps_autorun do
		awful.spawn.with_shell(apps_autorun[app])
	end
end

--
--- Tail: Autorun
--------------------------------------------------------------------------------
