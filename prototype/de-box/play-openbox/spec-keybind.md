
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
* [Toggle Show Desktop](#toggle-show-desktop)
* [Go To Workspace](#go-to-workspace)
* [Send To Workspace](#send-to-workspace)
* [Window Switch](#window-switch)
* [Window Raise or Lower](#window-raise-or-lower)




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

* Config Sample / [Openbox](config/openbox/openbox-gen-rc/Section/Keybind/Openbox.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Shift + z` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Restart | [Restart](http://openbox.org/wiki/Help:Actions#Restart) |
| `Alt + Shift + x` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Logout | [Exit](http://openbox.org/wiki/Help:Actions#Exit) |
| `Ctrl + Alt + Delete` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Logout | [Exit](http://openbox.org/wiki/Help:Actions#Exit) |
| `Alt + Shift + c` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Reconfigure | [Reconfigure](http://openbox.org/wiki/Help:Actions#Reconfigure) |
| `Alt + Shift + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Launch obconf | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


## Show Client Menu

* Config Sample / [MenuClient](config/openbox/openbox-gen-rc/Section/Keybind/MenuClient.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Alt + Space` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-menu) |


## Show Root Menu

* Config Sample / [MenuRoot](config/openbox/openbox-gen-rc/Section/Keybind/MenuRoot.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + Space` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Alt + F1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Ctrl + Win + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Ctrl + Alt + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |


## Show Workspace Menu

* Config Sample / [MenuClientList](config/openbox/openbox-gen-rc/Section/Keybind/MenuClientList.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + c` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `Ctrl + Win + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `Ctrl + Alt + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |


## Toggle Show Desktop

* Config Sample / [ToggleShowDesktop](config/openbox/openbox-gen-rc/Section/Keybind/ToggleShowDesktop.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `Alt + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `Ctrl + Win + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `Ctrl + Alt + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |


## Go To Workspace

* Config Sample / [GoToDesktop](config/openbox/openbox-gen-rc/Section/Keybind/GoToDesktop.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Left (Previous) Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Right (Previous) Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + z` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Last Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Last Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Up Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Down Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Left Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Right Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + 1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 1 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 2` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 2 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 3` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 3 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 4 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 5` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 5 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 6` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 6 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 7` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 7 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 8` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 8 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 9` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 9 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 0` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Workspace 10 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


## Send To Workspace

* Config Sample / [SendToDesktop](config/openbox/openbox-gen-rc/Section/Keybind/SendToDesktop.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Win + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Previous Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Next Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Win + z` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Last Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Last Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Win + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Up Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Down Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Win + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Left Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Right Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Win + 1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 1 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 2` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 2 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 3` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 3 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 4 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 5` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 5 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 6` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 6 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 7` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 7 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 8` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 8 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 9` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 9 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 0` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 10 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + 1` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 1 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 2` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 2 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 3` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 3 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 4 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 5` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 5 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 6` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 6 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 7` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 7 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 8` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 8 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 9` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 9 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 0` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Workspace 10 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


## Window Switch

* Config Sample / [WindowSwitch](config/openbox/openbox-gen-rc/Section/Keybind/WindowSwitch.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + s` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


## Window Raise or Lower

* Config Sample / [WindowRaiseLower](config/openbox/openbox-gen-rc/Section/Keybind/WindowRaiseLower.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + u` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Raise or Lower Window | [RaiseLower](http://openbox.org/wiki/Help:Actions#RaiseLower) |
| `Win + Shift + PageUp` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Raise Window | [RaiseLower](http://openbox.org/wiki/Help:Actions#Raise) |
| `Win + Shift + PageDown` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Lower Window | [RaiseLower](http://openbox.org/wiki/Help:Actions#Lower) |


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
