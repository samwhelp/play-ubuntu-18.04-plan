

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


		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

	</context>
