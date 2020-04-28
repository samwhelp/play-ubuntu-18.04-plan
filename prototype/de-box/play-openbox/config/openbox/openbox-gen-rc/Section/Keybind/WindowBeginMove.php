

	<!-- Window Begin Move //-->
	<keybind key="W-e">
		<action name="UnmaximizeFull"/>
		<action name="Move"/>
	</keybind>


	<!-- Version: [k j h l] //-->
	<!-- Window Move To North (Up) //-->
	<keybind key="W-S-k">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>0</x>
			<y>-20</y>
		</action>
	</keybind>

	<!-- Window Move To South (Down) //-->
	<keybind key="W-S-j">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>0</x>
			<y>+20</y>
		</action>
	</keybind>

	<!-- Window Move To West (Left) //-->
	<keybind key="W-S-h">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>-20</x>
			<y>0</y>
		</action>
	</keybind>

	<!-- Window Move To East (Right) //-->
	<keybind key="W-S-l">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>+20</x>
			<y>0</y>
		</action>
	</keybind>


	<!-- Version: [Up Down Left Right] //-->
	<!-- Window Move To North (Up) //-->
	<keybind key="W-Up">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>0</x>
			<y>-20</y>
		</action>
	</keybind>

	<!-- Window Move To South (Down) //-->
	<keybind key="W-Down">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>0</x>
			<y>+20</y>
		</action>
	</keybind>

	<!-- Window Move To West (Left) //-->
	<keybind key="W-Left">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>-20</x>
			<y>0</y>
		</action>
	</keybind>

	<!-- Window Move To East (Right) //-->
	<keybind key="W-Right">
		<action name="UnmaximizeFull"/>
		<action name="MoveRelative">
			<x>+20</x>
			<y>0</y>
		</action>
	</keybind>

<?php
/*

## Help

* http://openbox.org/wiki/Help:Actions#Move
* http://openbox.org/wiki/Help:Actions#MoveRelative

*/
?>
