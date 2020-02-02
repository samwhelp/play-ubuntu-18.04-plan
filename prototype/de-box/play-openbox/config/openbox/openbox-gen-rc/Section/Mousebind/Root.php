

	<context name="Root">

		<!-- Mouse Button Left Click //-->
		<mousebind button="Left" action="Press">
			<action name="ToggleShowDesktop"/>
		</mousebind>

		<!-- Menus -->
		<!-- Mouse Button Middle Click //-->
		<mousebind button="Middle" action="Press">
			<action name="ShowMenu">
				<menu>client-list-combined-menu</menu>
			</action>
		</mousebind>

		<!-- Mouse Button Right Click //-->
		<mousebind button="Right" action="Press">
			<action name="ShowMenu">
				<menu>root-menu</menu>
			</action>
		</mousebind>

	</context>
