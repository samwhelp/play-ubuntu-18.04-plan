
# Openbox / Keybind


## Subject

* [Link](#link)
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
* [Window Close](#window-close)
* [Window Iconify](#window-iconify)
* [Window Toggle Maximize](#window-toggle-maximize)
* [Window Toggle Fullscreen](#window-toggle-fullscreen)
* [Window Toggle Decorations](#window-toggle-decorations)
* [Window Toggle Shade](#window-toggle-shade)
* [Window Toggle AlwaysOnTop](#window-toggle-alwaysontop)
* [Window Toggle AlwaysOnBottom](#window-toggle-alwaysonbottom)
* [Window SendToLayer Normal](#window-sendtolayer-normal)
* [Window Begin Move](#window-begin-move)
* [Window Begin Resize](#window-begin-resize)
* [Window Tiling](#window-tiling)
* [Window Tiling Move / Side](#window-tiling-move-side)
* [Window Tiling Move / Corner](#window-tiling-move-corner)
* [Rofi](#rofi)
* [Launch App](#launch-app)
* [Print](#print)


## Link

* [docs-spec-keybind](../../../docs/spec/keybind.md)
* [spec-mousebind](spec-mousebind.md)


## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Keyboard)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Key_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions)


## Tips

* `Alt` for Workspace (Desktop)
* `Win` for Window (Client)


## Config File

* [~/.config/openbox/rc.xml](config/openbox/rc.xml)

> Search `<keyboard>`


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
| `Win + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
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
| `Win + Shift + PageUp` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Raise Window | [Raise](http://openbox.org/wiki/Help:Actions#Raise) |
| `Win + Shift + PageDown` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Lower Window | [Lower](http://openbox.org/wiki/Help:Actions#Lower) |


## Window Close

* Config Sample / [WindowClose](config/openbox/openbox-gen-rc/Section/Keybind/WindowClose.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + q` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [Close](http://openbox.org/wiki/Help:Actions#Close) |
| `Alt + Shift + q` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [Close](http://openbox.org/wiki/Help:Actions#Close) |
| `Alt + F4` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [Close](http://openbox.org/wiki/Help:Actions#Close) |


## Window Iconify

* Config Sample / [WindowIconify](config/openbox/openbox-gen-rc/Section/Keybind/WindowIconify.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + x` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [Iconify](http://openbox.org/wiki/Help:Actions#Iconify) |
| `Win + n` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [Iconify](http://openbox.org/wiki/Help:Actions#Iconify) |


## Window Toggle Maximize

* Config Sample / [WindowToggleMaximize](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleMaximize.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + w` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |
| `Win + m` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |


## Window Toggle Fullscreen

* Config Sample / [WindowToggleFullscreen](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleFullscreen.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + f` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleFullscreen](http://openbox.org/wiki/Help:Actions#ToggleFullscreen) |
| `Win + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleFullscreen](http://openbox.org/wiki/Help:Actions#ToggleFullscreen) |


## Window Toggle Decorations

* Config Sample / [WindowToggleDecorations](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleDecorations.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + v` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleDecorations](http://openbox.org/wiki/Help:Actions#ToggleDecorations) |
| `Win + p` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleDecorations](http://openbox.org/wiki/Help:Actions#ToggleDecorations) |


## Window Toggle Shade

* Config Sample / [WindowToggleShade](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleShade.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + y` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleShade](http://openbox.org/wiki/Help:Actions#ToggleShade) |


## Window Toggle AlwaysOnTop

* Config Sample / [WindowToggleAlwaysOnTop](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnTop.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + t` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleAlwaysOnTop](http://openbox.org/wiki/Help:Actions#ToggleAlwaysOnTop) |


## Window Toggle AlwaysOnBottom

* Config Sample / [WindowToggleAlwaysOnBottom](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnBottom.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + b` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [ToggleAlwaysOnBottom](http://openbox.org/wiki/Help:Actions#ToggleAlwaysOnBottom) |


## Window SendToLayer Normal

* Config Sample / [WindowSendToLayer](config/openbox/openbox-gen-rc/Section/Keybind/WindowSendToLayer.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + g` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [SendToLayer](http://openbox.org/wiki/Help:Actions#SendToLayer) |


## Window Begin Move

* Config Sample / [WindowBeginMove](config/openbox/openbox-gen-rc/Section/Keybind/WindowBeginMove.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + e` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | [Move](http://openbox.org/wiki/Help:Actions#Move) |


## Window Begin Resize

* Config Sample / [WindowBeginResize](config/openbox/openbox-gen-rc/Section/Keybind/WindowBeginResize.php)

| Key | How to set | Doc |
| --- | --- | --- |
| `Win + r` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | [Resize](http://openbox.org/wiki/Help:Actions#Resize) |


## Window Tiling

* Config Sample / [WindowTiling](config/openbox/openbox-gen-rc/Section/Keybind/WindowTiling.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Ctrl + u` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Horizontal (North-South) (Top-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + i` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Vertical (West-East) (Left-Right) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + o` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Restore Window | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |


## Window Tiling Move / Side

* Config Sample / [WindowTilingMoveSide](config/openbox/openbox-gen-rc/Section/Keybind/WindowTilingMoveSide.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Ctrl + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To North (Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To South (Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To West (Left) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To East (Right) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Ctrl + Up` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To North (Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + Down` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To South (Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + Left` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To West (Left) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + Right` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To East (Right) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |

## Window Tiling Move / Corner

* Config Sample / [WindowTilingMoveCorner](config/openbox/openbox-gen-rc/Section/Keybind/WindowTilingMoveCorner.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Shift + k` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To West-North (Left-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + j` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To East-North (Right-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + h` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To West-South (Left-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + l` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To East-South (Right-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |


| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Shift + Up` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To West-North (Left-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + Down` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To East-North (Right-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + Left` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To West-South (Left-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + Right` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Tiling Window Move To East-South (Right-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |


## Rofi

* Config Sample / [Rofi](config/openbox/openbox-gen-rc/Section/Keybind/Rofi.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Shift + r` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Rofi Show Run | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + d` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Rofi Show Drun | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + w` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Rofi Show Window | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


## Launch App

* Config Sample / [LaunchApp](config/openbox/openbox-gen-rc/Section/Keybind/LaunchApp.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + Enter` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch Terminal (sakura -m) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + a` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch Terminal (sakura -m) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + t` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch Quake Terminal (tilix --quake) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + f` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch File Manager (pcmanfm-qt) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + g` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch File Manager (nautilus) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + b` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch Web Browser (firefox) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + e` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Launch TextEditor (gedit) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


## Print

* Config Sample / [Print](config/openbox/openbox-gen-rc/Section/Keybind/Print.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Print` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Rofi Show Run | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Print` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#) | Rofi Show Drun | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
