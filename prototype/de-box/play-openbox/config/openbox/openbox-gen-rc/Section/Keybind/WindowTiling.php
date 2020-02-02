

	<!-- Vertical tiling -->
	<keybind key="W-C-i">
		<action name="Undecorate"/>
		<action name="UnmaximizeFull"/>
		<action name="MoveResizeTo">
			<width>50%</width>
		</action>
		<action name="MaximizeVert"/>
		<action name="MoveResizeTo">
			<x>0</x>
			<y>0</y>
		</action>
		<action name="NextWindow">
			<interactive>no</interactive>
			<dialog>none</dialog>
			<finalactions>
				<action name="Undecorate"/>
				<action name="UnmaximizeFull"/>
				<action name="MoveResizeTo">
					<width>50%</width>
				</action>
				<action name="MaximizeVert"/>
				<action name="MoveResizeTo">
					<x>-0</x>
					<y>0</y>
				</action>
			</finalactions>
		</action>
	</keybind>


	<!-- Horizontal tiling -->
	<keybind key="W-C-u">
		<action name="Undecorate"/>
		<action name="UnmaximizeFull"/>
		<action name="MoveResizeTo">
			<height>50%</height>
		</action>
		<action name="MaximizeHorz"/>
		<action name="MoveResizeTo">
			<x>0</x>
			<y>0</y>
		</action>
		<action name="NextWindow">
			<interactive>no</interactive>
			<dialog>none</dialog>
			<finalactions>
				<action name="Undecorate"/>
				<action name="UnmaximizeFull"/>
				<action name="MoveResizeTo">
					<height>50%</height>
				</action>
				<action name="MaximizeHorz"/>
				<action name="MoveResizeTo">
					<x>0</x>
					<y>-0</y>
				</action>
			</finalactions>
		</action>
	</keybind>


	<!-- Restore window dimensions -->
	<keybind key="W-C-o">
		<action name="UnmaximizeFull"/>
		<action name="Decorate"/>
		<action name="NextWindow">
			<interactive>no</interactive>
			<dialog>none</dialog>
			<finalactions>
				<action name="UnmaximizeFull"/>
				<action name="Decorate"/>
			</finalactions>
		</action>
	</keybind>

<?php
/*

## Help

* https://askubuntu.com/questions/516303/tiling-windows-horizontally-and-vertically-under-lubuntu-lxde-openbox

*/
?>
