

	<context name="Frame">

		<mousebind button="W-Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<!--
		<mousebind button="W-Left" action="Click">
			<action name="Unshade"/>
		</mousebind>
		//-->

		<mousebind button="W-Left" action="Drag">
			<action name="UnmaximizeFull"/>
			<action name="Move"/>
		</mousebind>

		<!--
		<mousebind button="W-Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>
		//-->

		<mousebind button="W-Right" action="Drag">
			<action name="UnmaximizeFull"/>
			<action name="Resize"/>
		</mousebind>

		<mousebind button="W-Middle" action="Press">
			<action name="Lower"/>
			<action name="FocusToBottom"/>
			<action name="Unfocus"/>
		</mousebind>



		<mousebind button="A-Up" action="Click">
			<action name="GoToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="A-Down" action="Click">
			<action name="GoToDesktop">
				<to>next</to>
			</action>
		</mousebind>


		<mousebind button="W-A-Up" action="Click">
			<action name="SendToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="W-A-Down" action="Click">
			<action name="SendToDesktop">
				<to>next</to>
			</action>
		</mousebind>




		<mousebind button="W-Left" action="DoubleClick">
			<action name="ToggleMaximize"/>
		</mousebind>

		<mousebind button="W-Middle" action="DoubleClick">
			<action name="ToggleDecorations"/>
		</mousebind>

		<mousebind button="W-Right" action="DoubleClick">
			<action name="ToggleFullscreen"/>
		</mousebind>


	</context>
