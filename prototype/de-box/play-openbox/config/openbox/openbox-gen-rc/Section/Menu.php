
<menu>
	<!--
		You can specify more than one menu file in here and they are all loaded,
		just don't make menu ids clash or, well, it'll be kind of pointless
	//-->
	<!-- default menu file (or custom one in $HOME/.config/openbox/) //-->
	<!-- system menu files on Debian systems //-->
	<file>/var/lib/openbox/debian-menu.xml</file>
	<file>menu.xml</file>
	<hideDelay>200</hideDelay>
	<!--
		if a press-release lasts longer than this setting (in milliseconds),
		the menu is hidden again
	//-->
	<middle>no</middle>
	<!-- center submenus vertically about the parent entry //-->
	<submenuShowDelay>100</submenuShowDelay>
	<!--
		time to delay before showing a submenu after hovering over the parent
		entry.
		if this is a negative value, then the delay is infinite and the
		submenu will not be shown until it is clicked on
	//-->
	<submenuHideDelay>400</submenuHideDelay>
	<!--
		time to delay before hiding a submenu when selecting another
		entry in parent menu
		if this is a negative value, then the delay is infinite and the
		submenu will not be hidden until a different submenu is opened
	//-->
	<showIcons>yes</showIcons>
	<!-- controls if icons appear in the client-list-(combined-)menu //-->
	<manageDesktops>yes</manageDesktops>
	<!-- show the manage desktops section in the client-list-(combined-)menu //-->
</menu>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Configuration#Menu

## Doc

```
hideDelay How long (in milliseconds) you have to hold the mouse button down for it to be hidden automatically when you release it. If you hold shorter, it will stay up when you release.
middle Position menus centered vertically instead of aligned to the top.
submenuShowDelay and submenuHideDelay affect how submenus pop up when moving across them. When moving away from a submenu it is closed after submenuHideDelay, and when moving into one, it is opened after submenuShowDelay. When moving from one submenu to another, the hide delay is only used if it is lower than the show delay (e.g. by default it is not used). The old submenu is closed after HideDelay milliseconds, and after ShowDelay milliseconds (after moving) the new one is shown (and the old one is hidden even if HideDelay has not expired yet).
applicationIcons Whether to show window icons in the Desktop and Windows menus (client-list-menu and client-list-combined-menu).
manageDesktops Whether to show the Add new desktop and Remove last desktop entries in the Desktop and Windows menus.
file Specify files to load menu specifications from. Can be given more than once, although care should be taken to avoid id clashes. Files are searched for in the user directory first and then in the system directory.
```

*/
?>
