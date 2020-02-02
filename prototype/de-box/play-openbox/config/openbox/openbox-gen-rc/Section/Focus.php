
<focus>
	<focusNew>yes</focusNew>
	<!-- always try to focus new windows when they appear. other rules do apply //-->
	<followMouse>no</followMouse>
	<!-- move focus to a window when you move the mouse into it //-->
	<focusLast>yes</focusLast>
	<!--
		focus the last used window when changing desktops, instead of the one
		under the mouse pointer. when followMouse is enabled
	//-->
	<underMouse>no</underMouse>
	<!-- move focus under the mouse, even when the mouse is not moving //-->
	<focusDelay>200</focusDelay>
	<!--
		when followMouse is enabled, the mouse must be inside the window for
		this many milliseconds (1000 = 1 sec) before moving focus to it
	//-->
	<raiseOnFocus>no</raiseOnFocus>
	<!--
		when followMouse is enabled, and a window is given focus by moving the
		mouse into it, also raise the window
	//-->
</focus>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Configuration#Focus

## Option

* focusNew Openbox will automatically give focus to new windows when they are created, otherwise the focus will stay as it is.
* followMouse Makes focus follow mouse. e.g. when the mouse is being moved the focus will be given to window under the mouse cursor.
* focusLast When switching desktops, focus the last focused window on that desktop again, regardless of where the mouse is. Only applies followMouse is set.
* focusDelay The time (in milliseconds) Openbox will wait before giving focus to the window under mouse cursor. Only applies if followMouse is set.
* underMouse Focus windows under the mouse not only when the mouse moves, but also when it enters another window due to other reasons (e.g. the window the mouse was in moved/closed/iconified etc). Only applies if followMouse is set.
* raiseOnFocus Also raises windows to top when they are focused. Only applies if followMouse is set.


*/
?>
