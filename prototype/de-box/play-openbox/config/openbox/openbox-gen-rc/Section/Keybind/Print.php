

	<!-- Take a screenshot of the current window with scrot when Alt+Print are pressed -->
	<keybind key="A-Print">
		<action name="Execute">
			<command>scrot -s</command>
		</action>
	</keybind>

	<!-- Launch scrot when Print is pressed -->
	<keybind key="Print">
		<action name="Execute">
			<command>scrot</command>
		</action>
	</keybind>

<?php
/*

## Help

* $ man scrot

*/
?>
