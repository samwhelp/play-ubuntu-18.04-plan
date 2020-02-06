
<mouse>

	<dragThreshold>1</dragThreshold>
	<!-- number of pixels the mouse must move before a drag begins //-->
	<doubleClickTime>500</doubleClickTime>
	<!-- in milliseconds (1000 = 1 second) //-->
	<screenEdgeWarpTime>400</screenEdgeWarpTime>
	<!--
		Time before changing desktops when the pointer touches the edge of the
		screen while moving a window, in milliseconds (1000 = 1 second).
		Set this to 0 to disable warping
	//-->
	<screenEdgeWarpMouse>false</screenEdgeWarpMouse>
	<!--
		Set this to TRUE to move the mouse pointer across the desktop when
		switching due to hitting the edge of the screen
	//-->

	<?php include_once(__DIR__ . '/Mousebind/Frame.php'); ?>
	<?php include_once(__DIR__ . '/Mousebind/Titlebar.php'); ?>
	<?php include_once(__DIR__ . '/Mousebind/Client.php'); ?>
	<?php include_once(__DIR__ . '/Mousebind/Desktop.php'); ?>
	<?php include_once(__DIR__ . '/Mousebind/Root.php'); ?>
	<?php include_once(__DIR__ . '/Mousebind/MoveResize.php'); ?>

</mouse>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Configuration#Mouse
* http://openbox.org/wiki/Help:Bindings#Mouse_bindings
* * http://openbox.org/wiki/Help:Actions

*/
?>
