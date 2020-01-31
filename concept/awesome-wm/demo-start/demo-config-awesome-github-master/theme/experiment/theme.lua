
--------------------------------------------------------------------------------
--- Head: Require
--

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require('gears.filesystem')

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Path
--

local themes_dir_path = gfs.get_themes_dir()
local theme_default_dir_path = themes_dir_path .. 'default'

print('themes_dir_path = ' .. themes_dir_path)
print('theme_default_dir_path = ' .. theme_default_dir_path)

--
-- Tail: Path
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Theme
--

local theme = {}

theme.wallpaper = theme_default_dir_path .. '/background.png'

-- https://awesomewm.org/doc/api/libraries/awful.hotkeys_popup.widget.html#beautiful.hotkeys_border_width
theme.hotkeys_border_width = 1


theme.font = 'sans 12'

theme.bg_normal     = "#222222"
theme.bg_focus      = "#606060"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"


theme.useless_gap         = dpi(4)
theme.border_width        = dpi(1)
theme.border_color_normal = "#000000"
theme.border_color_active = "#535d6c"
theme.border_marked       = "#91231c"


-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
	taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
	taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_default_dir_path .. '/submenu.png'
theme.menu_height = dpi(25)
theme.menu_width  = dpi(200)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"



-- layoutbox
-- https://github.com/awesomeWM/awesome/blob/master/themes/default/theme.lua#L105
-- https://github.com/awesomeWM/awesome/blob/master/themes/default/layouts/floatingw.png
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/suit/floating.lua#L109
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/widget/layoutbox.lua#L34
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L413
theme.layout_floating  = theme_default_dir_path .. '/layouts/floatingw.png'
theme.layout_fairh = theme_default_dir_path .. '/layouts/fairhw.png'
theme.layout_fairv = theme_default_dir_path .. '/layouts/fairvw.png'
theme.layout_magnifier = theme_default_dir_path .. '/layouts/magnifierw.png'
theme.layout_max = theme_default_dir_path .. '/layouts/maxw.png'
theme.layout_fullscreen = theme_default_dir_path .. '/layouts/fullscreenw.png'
theme.layout_tilebottom = theme_default_dir_path .. '/layouts/tilebottomw.png'
theme.layout_tileleft   = theme_default_dir_path .. '/layouts/tileleftw.png'
theme.layout_tile = theme_default_dir_path .. '/layouts/tilew.png'
theme.layout_tiletop = theme_default_dir_path .. '/layouts/tiletopw.png'
theme.layout_spiral  = theme_default_dir_path .. '/layouts/spiralw.png'
theme.layout_dwindle = theme_default_dir_path .. '/layouts/dwindlew.png'
theme.layout_cornernw = theme_default_dir_path .. '/layouts/cornernww.png'
theme.layout_cornerne = theme_default_dir_path .. '/layouts/cornernew.png'
theme.layout_cornersw = theme_default_dir_path .. '/layouts/cornersww.png'
theme.layout_cornerse = theme_default_dir_path .. '/layouts/cornersew.png'


-- titlebar
theme.titlebar_close_button_normal = theme_default_dir_path .. '/titlebar/close_normal.png'
theme.titlebar_close_button_focus  = theme_default_dir_path .. '/titlebar/close_focus.png'

theme.titlebar_minimize_button_normal = theme_default_dir_path .. '/titlebar/minimize_normal.png'
theme.titlebar_minimize_button_focus  = theme_default_dir_path .. '/titlebar/minimize_focus.png'

theme.titlebar_ontop_button_normal_inactive = theme_default_dir_path .. '/titlebar/ontop_normal_inactive.png'
theme.titlebar_ontop_button_focus_inactive  = theme_default_dir_path .. '/titlebar/ontop_focus_inactive.png'
theme.titlebar_ontop_button_normal_active = theme_default_dir_path .. '/titlebar/ontop_normal_active.png'
theme.titlebar_ontop_button_focus_active  = theme_default_dir_path .. '/titlebar/ontop_focus_active.png'

theme.titlebar_sticky_button_normal_inactive = theme_default_dir_path .. '/titlebar/sticky_normal_inactive.png'
theme.titlebar_sticky_button_focus_inactive  = theme_default_dir_path .. '/titlebar/sticky_focus_inactive.png'
theme.titlebar_sticky_button_normal_active = theme_default_dir_path .. '/titlebar/sticky_normal_active.png'
theme.titlebar_sticky_button_focus_active  = theme_default_dir_path .. '/titlebar/sticky_focus_active.png'

theme.titlebar_floating_button_normal_inactive = theme_default_dir_path .. '/titlebar/floating_normal_inactive.png'
theme.titlebar_floating_button_focus_inactive  = theme_default_dir_path .. '/titlebar/floating_focus_inactive.png'
theme.titlebar_floating_button_normal_active = theme_default_dir_path .. '/titlebar/floating_normal_active.png'
theme.titlebar_floating_button_focus_active  = theme_default_dir_path .. '/titlebar/floating_focus_active.png'

theme.titlebar_maximized_button_normal_inactive = theme_default_dir_path .. '/titlebar/maximized_normal_inactive.png'
theme.titlebar_maximized_button_focus_inactive  = theme_default_dir_path .. '/titlebar/maximized_focus_inactive.png'
theme.titlebar_maximized_button_normal_active = theme_default_dir_path .. '/titlebar/maximized_normal_active.png'
theme.titlebar_maximized_button_focus_active  = theme_default_dir_path .. '/titlebar/maximized_focus_active.png'



-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
	theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
--theme.icon_theme = nil
theme.icon_theme = 'Numix'


return theme

--
-- Tail: Theme
--------------------------------------------------------------------------------
