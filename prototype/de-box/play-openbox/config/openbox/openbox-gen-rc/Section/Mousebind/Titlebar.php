

	<context name="Titlebar">

		<mousebind button="Left" action="Drag">
			<action name="UnmaximizeFull"/>
			<action name="Move"/>
		</mousebind>

		<mousebind button="Left" action="DoubleClick">
			<action name="ToggleMaximize"/>
		</mousebind>

		<mousebind button="Up" action="Click">
			<action name="if">
				<shaded>no</shaded>
				<then>
					<action name="Shade"/>
					<action name="FocusToBottom"/>
					<action name="Unfocus"/>
					<action name="Lower"/>
				</then>
			</action>
		</mousebind>

		<mousebind button="Down" action="Click">
			<action name="if">
				<shaded>yes</shaded>
				<then>
					<action name="Unshade"/>
					<action name="Raise"/>
				</then>
			</action>
		</mousebind>

	</context>


	<context name="Titlebar Top Right Bottom Left TLCorner TRCorner BRCorner BLCorner">

		<!--
		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>
		//-->

		<mousebind button="Middle" action="Press">
			<action name="Lower"/>
			<action name="FocusToBottom"/>
			<action name="Unfocus"/>
		</mousebind>

		<mousebind button="Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="ShowMenu">
				<menu>client-menu</menu>
			</action>
		</mousebind>

	</context>


	<context name="Top">

		<mousebind button="Left" action="Drag">
			<action name="Resize">
				<edge>top</edge>
			</action>
		</mousebind>

	</context>


	<context name="Left">

		<mousebind button="Left" action="Drag">
			<action name="Resize">
				<edge>left</edge>
			</action>
		</mousebind>

	</context>

	<context name="Right">

		<mousebind button="Left" action="Drag">
			<action name="Resize">
				<edge>right</edge>
			</action>
		</mousebind>

	</context>


	<context name="Bottom">

		<mousebind button="Left" action="Drag">
			<action name="Resize">
				<edge>bottom</edge>
			</action>
		</mousebind>

		<mousebind button="Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="ShowMenu">
				<menu>client-menu</menu>
			</action>
		</mousebind>

	</context>


	<context name="TRCorner BRCorner TLCorner BLCorner">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="Left" action="Drag">
			<action name="Resize"/>
		</mousebind>

	</context>
