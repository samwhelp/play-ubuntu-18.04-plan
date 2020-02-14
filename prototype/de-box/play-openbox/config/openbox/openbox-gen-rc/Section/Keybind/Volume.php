

	<!-- ## Volume Control //-->
	<keybind key="A-S-v">
		<action name="Execute">
			<startupnotify>
				<enabled>true</enabled>
				<name>VolumeControl</name>
			</startupnotify>
			<command>mate-volume-control</command>
		</action>
	</keybind>


	<keybind key="A-m">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master toggle</command>
		</action>
	</keybind>

	<keybind key="A-comma">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master 5%- unmute</command>
		</action>
	</keybind>

	<keybind key="A-period">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master 5%+ unmute</command>
		</action>
	</keybind>


	<keybind key="A-S-comma">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master 1%- unmute</command>
		</action>
	</keybind>

	<keybind key="A-S-period">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master 1%+ unmute</command>
		</action>
	</keybind>




	<keybind key="XF86AudioMute">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master toggle</command>
		</action>
	</keybind>

	<keybind key="XF86AudioLowerVolume">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master 5%- unmute</command>
		</action>
	</keybind>

	<keybind key="XF86AudioRaiseVolume">
		<action name="Execute">
			<command>amixer -q -D pulse sset Master 5%+ unmute</command>
		</action>
	</keybind>


<?php
/*

## Help

* https://askubuntu.com/questions/872014/mute-button-doesnt-unmute

* https://wiki.archlinux.org/index.php/Xbindkeys
* https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture#Keyboard_volume_control
* https://wiki.archlinux.org/index.php/PulseAudio#Keyboard_volume_control
* https://zh.wikipedia.org/zh-tw/ALSA
* https://en.wikipedia.org/wiki/Advanced_Linux_Sound_Architecture
* https://zh.wikipedia.org/zh-tw/PulseAudio
* https://en.wikipedia.org/wiki/PulseAudio


## Command And Package
* amixer (Package: alsa-utils)
* pactl (Package: pulseaudio-utils)
* pavucontrol (Package: pavucontrol)
* pavucontrol-qt (Package: pavucontrol-qt)
* mate-volume-control (Package: mate-media)

*/
?>
