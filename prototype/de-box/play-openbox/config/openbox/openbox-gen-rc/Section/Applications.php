
<applications>
	<!--
	# this is an example with comments through out. use these to make your
	# own rules, but without the comments of course.
	# you may use one or more of the name/class/role/title/type rules to specify
	# windows to match

	<application
		name="the window's _OB_APP_NAME property (see obxprop)"
		class="the window's _OB_APP_CLASS property (see obxprop)"
		groupname="the window's _OB_APP_GROUP_NAME property (see obxprop)"
		groupclass="the window's _OB_APP_GROUP_CLASS property (see obxprop)"
		role="the window's _OB_APP_ROLE property (see obxprop)"
		title="the window's _OB_APP_TITLE property (see obxprop)"
		type="the window's _OB_APP_TYPE property (see obxprob)
		(if unspecified, then it is 'dialog' for child windows)"
	>
		# you may set only one of name/class/role/title/type, or you may use more
		# than one together to restrict your matches.

		# the name, class, role, and title use simple wildcard matching such as those
		# used by a shell. you can use * to match any characters and ? to match
		# any single character.

		# the type is one of: normal, dialog, splash, utility, menu, toolbar, dock,
		#		or desktop

		# when multiple rules match a window, they will all be applied, in the
		# order that they appear in this list


		# each rule element can be left out or set to 'default' to specify to not
		# change that attribute of the window

		<decor>yes</decor>
		# enable or disable window decorations

		<shade>no</shade>
		# make the window shaded when it appears, or not

		<position force="no">
			# the position is only used if both an x and y coordinate are provided
			# (and not set to 'default')
			# when force is "yes", then the window will be placed here even if it
			# says you want it placed elsewhere.	this is to override buggy
			# applications who refuse to behave
			<x>center</x>
			# a number like 50, or 'center' to center on screen. use a negative number
			# to start from the right (or bottom for <y>), ie -50 is 50 pixels from
			# the right edge (or bottom). use 'default' to specify using value
			# provided by the application, or chosen by openbox, instead.
			<y>200</y>
			<monitor>1</monitor>
			# specifies the monitor in a xinerama setup.
			# 1 is the first head, or 'mouse' for wherever the mouse is
		</position>

		<size>
			# the size to make the window.
			<width>20</width>
			# a number like 20, or 'default' to use the size given by the application.
			# you can use fractions such as 1/2 or percentages such as 75% in which
			# case the value is relative to the size of the monitor that the window
			# appears on.
			<height>30%</height>
		</size>

		<focus>yes</focus>
		# if the window should try be given focus when it appears. if this is set
		# to yes it doesn't guarantee the window will be given focus. some
		# restrictions may apply, but Openbox will try to

		<desktop>1</desktop>
		# 1 is the first desktop, 'all' for all desktops

		<layer>normal</layer>
		# 'above', 'normal', or 'below'

		<iconic>no</iconic>
		# make the window iconified when it appears, or not

		<skip_pager>no</skip_pager>
		# asks to not be shown in pagers

		<skip_taskbar>no</skip_taskbar>
		# asks to not be shown in taskbars. window cycling actions will also
		# skip past such windows

		<fullscreen>yes</fullscreen>
		# make the window in fullscreen mode when it appears

		<maximized>true</maximized>
		# 'Horizontal', 'Vertical' or boolean (yes/no)

	</application>

	# end of the example
	//-->

<?php //include_once(__DIR__ . '/Applications/NormalNoDecorations.php'); ?>

<?php include_once(__DIR__ . '/Rule/GnomeTerminal.php'); ?>
<?php include_once(__DIR__ . '/Rule/Xfce4Terminal.php'); ?>
<?php include_once(__DIR__ . '/Rule/MateTerminal.php'); ?>
<?php include_once(__DIR__ . '/Rule/Terminator.php'); ?>


<?php include_once(__DIR__ . '/Rule/Atom.php'); ?>
<?php include_once(__DIR__ . '/Rule/Code.php'); ?>
<?php include_once(__DIR__ . '/Rule/Geany.php'); ?>
<?php include_once(__DIR__ . '/Rule/Gedit.php'); ?>
<?php //include_once(__DIR__ . '/Rule/Mousepad.php'); ?>
<?php include_once(__DIR__ . '/Rule/Leafpad.php'); ?>
<?php include_once(__DIR__ . '/Rule/Kate.php'); ?>
<?php include_once(__DIR__ . '/Rule/GnomeBuilder.php'); ?>
<?php include_once(__DIR__ . '/Rule/Kdevelop.php'); ?>
<?php include_once(__DIR__ . '/Rule/QtCreator.php'); ?>

<?php include_once(__DIR__ . '/Rule/Firefox.php'); ?>
<?php include_once(__DIR__ . '/Rule/ChromiumBrowser.php'); ?>
<?php include_once(__DIR__ . '/Rule/GoogleChrome.php'); ?>

<?php include_once(__DIR__ . '/Rule/Pcmanfm-qt.php'); ?>
<?php include_once(__DIR__ . '/Rule/Pcmanfm.php'); ?>
<?php include_once(__DIR__ . '/Rule/Spacefm.php'); ?>
<?php include_once(__DIR__ . '/Rule/Nautilus.php'); ?>
<?php include_once(__DIR__ . '/Rule/Thunar.php'); ?>
<?php include_once(__DIR__ . '/Rule/Dolphin.php'); ?>
<?php include_once(__DIR__ . '/Rule/Filezilla.php'); ?>

<?php include_once(__DIR__ . '/Rule/Xephyr.php'); ?>
<?php include_once(__DIR__ . '/Rule/Mpv.php'); ?>
<?php include_once(__DIR__ . '/Rule/Vlc.php'); ?>
<?php include_once(__DIR__ . '/Rule/Smplayer.php'); ?>
<?php include_once(__DIR__ . '/Rule/Audacious.php'); ?>
<?php include_once(__DIR__ . '/Rule/Libreoffice.php'); ?>
<?php include_once(__DIR__ . '/Rule/Gimp.php'); ?>
<?php include_once(__DIR__ . '/Rule/Openshot.php'); ?>


</applications>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Configuration#Applications
* http://openbox.org/wiki/Help:Applications

*/
?>
