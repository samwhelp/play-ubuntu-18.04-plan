
# Openbox / Keybind


## Subject

* [Manual](#manual)
* [Tips](#tips)
* [Config File](#config-file)
* [Config Sample](#config-sample)
* [Openbox](#openbox)
* [Show Client Menu](#show-client-menu)
* [Show Root Menu](#show-root-menu)
* [Show Workspace Menu](#show-workspace-menu)


## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Keyboard)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Key_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions)


## Tips

* `Alt` for Workspace (Desktop)
* `Win` for Window (Client)


## Config File

* [~/.config/openbox/rc.xml](config/openbox/rc.xml)


## Config Sample

* [Openbox](config/openbox/openbox-gen-rc/Section/Keybind/Openbox.php)
* [MenuClient](config/openbox/openbox-gen-rc/Section/Keybind/MenuClient.php)
* [MenuRoot](config/openbox/openbox-gen-rc/Section/Keybind/MenuRoot.php)
* [MenuClientList](config/openbox/openbox-gen-rc/Section/Keybind/MenuClientList.php)
* [ToggleShowDesktop](config/openbox/openbox-gen-rc/Section/Keybind/ToggleShowDesktop.php)
* [GoToDesktop](config/openbox/openbox-gen-rc/Section/Keybind/GoToDesktop.php)
* [SendToDesktop](config/openbox/openbox-gen-rc/Section/Keybind/SendToDesktop.php)
* [WindowSwitch](config/openbox/openbox-gen-rc/Section/Keybind/WindowSwitch.php)
* [WindowFocusSwitch](config/openbox/openbox-gen-rc/Section/Keybind/WindowFocusSwitch.php)
* [WindowRaiseLower](config/openbox/openbox-gen-rc/Section/Keybind/WindowRaiseLower.php)
* [WindowClose](config/openbox/openbox-gen-rc/Section/Keybind/WindowClose.php)
* [WindowIconify](config/openbox/openbox-gen-rc/Section/Keybind/WindowIconify.php)
* [WindowToggleMaximize](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleMaximize.php)
* [WindowToggleFullscreen](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleFullscreen.php)
* [WindowToggleDecorations](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleDecorations.php)
* [WindowToggleShade](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleShade.php)
* [WindowToggleAlwaysOnTop](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnTop.php)
* [WindowSendToLayer](config/openbox/openbox-gen-rc/Section/Keybind/WindowSendToLayer.php)
* [WindowToggleAlwaysOnBottom](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnBottom.php)
* [WindowBeginMove](config/openbox/openbox-gen-rc/Section/Keybind/WindowBeginMove.php)
* [WindowBeginResize](config/openbox/openbox-gen-rc/Section/Keybind/WindowBeginResize.php)
* [WindowTiling](config/openbox/openbox-gen-rc/Section/Keybind/WindowTiling.php)
* [WindowTilingMoveSide](config/openbox/openbox-gen-rc/Section/Keybind/WindowTilingMoveSide.php)
* [WindowTilingMoveCorner](config/openbox/openbox-gen-rc/Section/Keybind/WindowTilingMoveCorner.php)
* [Rofi](config/openbox/openbox-gen-rc/Section/Keybind/Rofi.php)
* [LaunchApp](config/openbox/openbox-gen-rc/Section/Keybind/LaunchApp.php)
* [Print](config/openbox/openbox-gen-rc/Section/Keybind/Print.php)


## Openbox

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Shift + z` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | | [Restart](http://openbox.org/wiki/Help:Actions#Restart) |
| `Alt + Shift + x` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Logout | [Exit](http://openbox.org/wiki/Help:Actions#Exit) |
| `Ctrl + Alt + Delete` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Logout | [Exit](http://openbox.org/wiki/Help:Actions#Exit) |
| `Alt + Shift + c` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Reconfigure | [Reconfigure](http://openbox.org/wiki/Help:Actions#Reconfigure) |
| `Alt + Shift + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Launch obconf | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |

* Config Sample / [Openbox](config/openbox/openbox-gen-rc/Section/Keybind/Openbox.php)

## Show Client Menu

| Key | How to set | Doc |
| --- | --- | --- |
| `Alt + Space` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-menu) |

* Config Sample / [MenuClient](config/openbox/openbox-gen-rc/Section/Keybind/MenuClient.php)


## Show Root Menu

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + Space` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Alt + F1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Ctrl + Win + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Ctrl + Alt + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |

* Config Sample / [MenuRoot](config/openbox/openbox-gen-rc/Section/Keybind/MenuRoot.php)


## Show Workspace Menu

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + c` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L521) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `Ctrl + Win + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L540) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `Ctrl + Alt + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L534) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |


* Config Sample / [MenuClientList](config/openbox/openbox-gen-rc/Section/Keybind/MenuClientList.php)

## ToggleShowDesktop

| Key | How to set |
| --- | --- |
| `Win + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L565) |
| `Alt + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L561) |
| `Ctrl + Win + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L540) |
| `Ctrl + Alt + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L534) |


## Window Switch

| Key | How to set | Description |
| --- | --- | --- |
| `Win + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L752) | Previous Window|
| `Win + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L761) | Next Window |


| Key | How to set | Description |
| --- | --- | --- |
| `Win + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L752) | Previous Window|
| `Win + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L761) | Next Window |


| Key | How to set | Description |
| --- | --- | --- |
| `Win + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L752) | Previous Window|
| `Win + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L761) | Next Window |


## Window Raise or Lower

| Key | How to set | Description |
| --- | --- | --- |
| `Win + u` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Raise or Lower Window |
| `Win + Shift + PageUp` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Raise Window |
| `Win + Shift PageDown` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Lower Window |


## Window Close

| Key | How to set |
| --- | --- |
| `Win + q` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L778) |
| `Alt + Shift + q` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L782) |
| `Alt + F4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L786) |


## Window Iconify

| Key | How to set |
| --- | --- |
| `Win + x` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L797) |
| `Win + n` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L801) |


## Window ToggleMaximize

| Key | How to set |
| --- | --- |
| `Win + w` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L812) |
| `Win + m` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L818) |


## Window ToggleFullscreen

| Key | How to set |
| --- | --- |
| `Win + f` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L845) |
| `Win + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L849) |


## Window ToggleDecorations

| Key | How to set |
| --- | --- |
| `Win + v` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L869) |
| `Win + p` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L873) |


## Window ToggleShade

| Key | How to set |
| --- | --- |
| `Win + y` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) |


## Window ToggleAlwaysOnTop

| Key | How to set |
| --- | --- |
| `Win + t` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) |


## Window ToggleAlwaysOnBottom

| Key | How to set |
| --- | --- |
| `Win + b` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) |


## Window SendToLayer Normal

| Key | How to set |
| --- | --- |
| `Win + g` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) |


## Window BeginMove

| Key | How to set |
| --- | --- |
| `Win + e` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L884) |


## Window BeginResize

| Key | How to set |
| --- | --- |
| `Win + r` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L896) |


## Window Tiling

| Key | How to set | Description |
| --- | --- | --- |
| `Win + Ctrl + u` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L990) | Tiling Window Horizontal (North-South) (Top-Bottom) |
| `Win + Ctrl + i` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1020) | Tiling Window Vertical (West-East) (Left-Right) |
| `Win + Ctrl + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1050) | Restore Window |


## Window Tiling Move / Side

| Key | How to set | Description |
| --- | --- | --- |
| `Win + Ctrl + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1166) | Tiling Window Move To North (Top) |
| `Win + Ctrl + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1176) | Tiling Window Move To South (Bottom) |
| `Win + Ctrl + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1186) | Tiling Window Move To West (Left) |
| `Win + Ctrl + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1196) | Tiling Window Move To East (Right) |

| Key | How to set | Description |
| --- | --- | --- |
| `Win + Ctrl + Up` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1166) | Tiling Window Move To North (Top) |
| `Win + Ctrl + Down` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1176) | Tiling Window Move To South (Bottom) |
| `Win + Ctrl + Left` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1186) | Tiling Window Move To West (Left) |
| `Win + Ctrl + Right` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1196) | Tiling Window Move To East (Right) |

## Window Tiling Move / Corner

| Key | How to set | Description |
| --- | --- | --- |
| `Win + Shift + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1212) | Tiling Window Move To West-North (Left-Top) |
| `Win + Shift + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1222) | Tiling Window Move To East-North (Right-Top) |
| `Win + Shift + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1232) | Tiling Window Move To West-South (Left-Bottom) |
| `Win + Shift + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1242) | Tiling Window Move To East-South (Right-Bottom) |


| Key | How to set | Description |
| --- | --- | --- |
| `Win + Shift + Up` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1212) | Tiling Window Move To West-North (Left-Top) |
| `Win + Shift + Down` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1222) | Tiling Window Move To East-North (Right-Top) |
| `Win + Shift + Left` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1232) | Tiling Window Move To West-South (Left-Bottom) |
| `Win + Shift + Right` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L1242) | Tiling Window Move To East-South (Right-Bottom) |


## Go To Workspace

| Key | How to set | Description |
| --- | --- | --- |
| `Alt + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L578) | Go To Left (Previous) Workspace |
| `Alt + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L584) | Go To Right (Previous) Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + z` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L590) | Go To Last Workspace |
| `Alt + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L590) | Go To Last Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L578) | Go To Up Workspace |
| `Alt + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L584) | Go To Down Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L578) | Go To Left Workspace |
| `Alt + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L584) | Go To Right Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + 1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L603) | Go To Workspace 1 |
| `Alt + 2` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L609) | Go To Workspace 2 |
| `Alt + 3` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L615) | Go To Workspace 3 |
| `Alt + 4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L621) | Go To Workspace 4 |
| `Alt + 5` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L627) | Go To Workspace 5 |
| `Alt + 6` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L633) | Go To Workspace 6 |
| `Alt + 7` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L639) | Go To Workspace 7 |
| `Alt + 8` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L645) | Go To Workspace 8 |
| `Alt + 9` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L651) | Go To Workspace 9 |
| `Alt + 0` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L657) | Go To Workspace 10 |


## Send To Workspace

| Key | How to set | Description |
| --- | --- | --- |
| `Alt + Win + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L672) | Send To Previous Workspace |
| `Alt + Win + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L678) | Send To Next Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + Win + z` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L590) | Send To Last Workspace |
| `Alt + Win + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L590) | Send To Last Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + Win + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Up Workspace |
| `Alt + Win + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Down Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + Win + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Left Workspace |
| `Alt + Win + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Right Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + Win + 1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L684) | Send To Workspace 1 |
| `Alt + Win + 2` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L690) | Send To Workspace 2 |
| `Alt + Win + 3` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L696) | Send To Workspace 3 |
| `Alt + Win + 4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L702) | Send To Workspace 4 |
| `Alt + Win + 5` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L708) | Send To Workspace 5 |
| `Alt + Win + 6` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L714) | Send To Workspace 6 |
| `Alt + Win + 7` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L720) | Send To Workspace 7 |
| `Alt + Win + 8` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L726) | Send To Workspace 8 |
| `Alt + Win + 9` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L732) | Send To Workspace 9 |
| `Alt + Win + 0` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L738) | Send To Workspace 10 |


| Key | How to set | Description |
| --- | --- | --- |
| `Win + 1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L684) | Send To Workspace 1 |
| `Win + 2` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L690) | Send To Workspace 2 |
| `Win + 3` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L696) | Send To Workspace 3 |
| `Win + 4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L702) | Send To Workspace 4 |
| `Win + 5` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L708) | Send To Workspace 5 |
| `Win + 6` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L714) | Send To Workspace 6 |
| `Win + 7` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L720) | Send To Workspace 7 |
| `Win + 8` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L726) | Send To Workspace 8 |
| `Win + 9` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L732) | Send To Workspace 9 |
| `Win + 0` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L738) | Send To Workspace 10 |
