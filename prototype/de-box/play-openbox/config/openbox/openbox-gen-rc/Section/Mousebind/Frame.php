

	<context name="Frame">

		<mousebind button="A-Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="A-Left" action="Click">
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="A-Left" action="Drag">
			<action name="Move"/>
		</mousebind>

		<mousebind button="A-Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="A-Right" action="Drag">
			<action name="Resize"/>
		</mousebind>

		<mousebind button="A-Middle" action="Press">
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

		<mousebind button="C-A-Up" action="Click">
			<action name="GoToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="C-A-Down" action="Click">
			<action name="GoToDesktop">
				<to>next</to>
			</action>
		</mousebind>

		<mousebind button="A-S-Up" action="Click">
			<action name="SendToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="A-S-Down" action="Click">
			<action name="SendToDesktop">
				<to>next</to>
			</action>
		</mousebind>

	</context>
