

	<context name="Desktop">

		<mousebind button="Up" action="Click">
			<action name="GoToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="Down" action="Click">
			<action name="GoToDesktop">
				<to>next</to>
			</action>
		</mousebind>


		<mousebind button="W-Up" action="Click">
			<action name="GoToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="W-Down" action="Click">
			<action name="GoToDesktop">
				<to>next</to>
			</action>
		</mousebind>

		<!--
		<mousebind button="W-C-Up" action="Click">
			<action name="GoToDesktop">
				<to>previous</to>
			</action>
		</mousebind>

		<mousebind button="W-C-Down" action="Click">
			<action name="GoToDesktop">
				<to>next</to>
			</action>
		</mousebind>
		//-->

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

	</context>
