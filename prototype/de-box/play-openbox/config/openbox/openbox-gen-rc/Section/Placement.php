
<placement>
	<policy>Smart</policy>
	<!-- 'Smart' or 'UnderMouse' //-->
	<center>yes</center>
	<!--
		whether to place windows in the center of the free area found or
		the top left corner
	//-->
	<monitor>Primary</monitor>
	<!--
		with Smart placement on a multi-monitor system, try to place new windows
		on: 'Any' - any monitor, 'Mouse' - where the mouse is, 'Active' - where
		the active window is, 'Primary' - only on the primary monitor
	//-->
	<primaryMonitor>1</primaryMonitor>
	<!--
		The monitor where Openbox should place popup dialogs such as the
		focus cycling popup, or the desktop switch popup.	It can be an index
		from 1, specifying a particular monitor.	Or it can be one of the
		following: 'Mouse' - where the mouse is, or
		'Active' - where the active window is
	//-->
</placement>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Configuration#Placement

## Option

```
policy can be either Smart or UnderMouse.

	Smart will cause new windows to be placed automatically by Openbox.
	UnderMouse makes new windows to be placed under the mouse cursor.

center can be either yes or no. If it is enabled, windows will open centered in the free area found.
```


*/
?>
