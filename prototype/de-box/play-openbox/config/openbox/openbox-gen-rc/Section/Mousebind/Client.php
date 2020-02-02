

	<context name="Client">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="Middle" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

	</context>

	<context name="Icon">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
			<action name="ShowMenu">
				<menu>client-menu</menu>
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


	<context name="AllDesktops">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="Left" action="Click">
			<action name="ToggleOmnipresent"/>
		</mousebind>

	</context>


	<context name="Shade">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="Left" action="Click">
			<action name="ToggleShade"/>
		</mousebind>

	</context>


	<context name="Iconify">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
		</mousebind>

		<mousebind button="Left" action="Click">
			<action name="Iconify"/>
		</mousebind>

	</context>


	<context name="Maximize">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="Middle" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="Right" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="Left" action="Click">
			<action name="ToggleMaximize"/>
		</mousebind>

		<mousebind button="Middle" action="Click">
			<action name="ToggleMaximize">
				<direction>vertical</direction>
			</action>
		</mousebind>

		<mousebind button="Right" action="Click">
			<action name="ToggleMaximize">
				<direction>horizontal</direction>
			</action>
		</mousebind>

	</context>


	<context name="Close">

		<mousebind button="Left" action="Press">
			<action name="Focus"/>
			<action name="Raise"/>
			<action name="Unshade"/>
		</mousebind>

		<mousebind button="Left" action="Click">
			<action name="Close"/>
		</mousebind>

	</context>
