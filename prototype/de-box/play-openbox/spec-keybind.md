
# Openbox / Keybind


## Subject


* [System](#system)
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
* [Volume](#volume)
* [Print](#print)


## Link

* [docs-spec-keybind](../../../docs/spec/Keybind.md)
* [spec-mousebind](spec-mousebind.md)


## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Keyboard)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Key_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions)


## Keys

### Mean

| Key | Description |
| --- | --- |
| `Shift` | 'Shift' |
| `Ctrl` | 'Control' |
| `Win` | 'Mod4' (Super) |
| `Alt` | 'Mod1' (Meta) |

> Using 'Alt' maybe collision occurs on bash emacs mode.
>
> Please read:
> * $ man [bash](http://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#readline) ## Search [^READLINE]
> * $ man 3 [readline](http://manpages.ubuntu.com/manpages/bionic/en/man3/readline.3readline.html) ## Search [Emacs Mode] or [Emacs Meta bindings]


### Tips

| Key | Description |
| --- | --- |
| `Win` | For Window (Client) |
| `Alt` | For Workspace (Tag) (Desktop) |
| `Shift` | For Window Move or Swap |
| `Ctrl` | For Window Resize |


## Config File

* [~/.config/openbox/rc.xml](config/openbox/rc.xml)

> Search `<keyboard>`


## System

* Config Sample / [Openbox](config/openbox/openbox-gen-rc/Section/Keybind/Openbox.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Shift + z` | Restart | [Restart](http://openbox.org/wiki/Help:Actions#Restart) |
| `Alt + Shift + x` | Logout | [Exit](http://openbox.org/wiki/Help:Actions#Exit) |
| `Ctrl + Alt + Delete` | Logout | [Exit](http://openbox.org/wiki/Help:Actions#Exit) |
| `Alt + Shift + c` | Reconfigure | [Reconfigure](http://openbox.org/wiki/Help:Actions#Reconfigure) |
| `Alt + Shift + s` | Launch obconf | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


## Show Client Menu

* Config Sample / [MenuClient](config/openbox/openbox-gen-rc/Section/Keybind/MenuClient.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Space` | Show Client Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-menu) |


## Show Root Menu

* Config Sample / [MenuRoot](config/openbox/openbox-gen-rc/Section/Keybind/MenuRoot.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + Space` | Show Root Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Alt + F1` | Show Root Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Ctrl + Win + a` | Show Root Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |
| `Ctrl + Alt + a` | Show Root Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |


## Show Workspace Menu

* Config Sample / [MenuClientList](config/openbox/openbox-gen-rc/Section/Keybind/MenuClientList.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + c` | Show Workspace Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `Ctrl + Win + s` | Show Workspace Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |
| `Ctrl + Alt + s` | Show Workspace Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-list-combined-menu) |


## Toggle Show Desktop

* Config Sample / [ToggleShowDesktop](config/openbox/openbox-gen-rc/Section/Keybind/ToggleShowDesktop.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + d` | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `Ctrl + Win + d` | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `Ctrl + Alt + d` | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |


## Go To Workspace

* Config Sample / [GoToDesktop](config/openbox/openbox-gen-rc/Section/Keybind/GoToDesktop.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + a` | Go To Left (Previous) Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + s` | Go To Right (Previous) Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + z` | Go To Last Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |



| Key | Description | Doc |
| --- | --- | --- |
| `Alt + k` | Go To Up Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + j` | Go To Down Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + h` | Go To Left Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + l` | Go To Right Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + [` | Go To Left Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + ]` | Go To Right Workspace | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + 1` | Go To Workspace 1 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 2` | Go To Workspace 2 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 3` | Go To Workspace 3 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 4` | Go To Workspace 4 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 5` | Go To Workspace 5 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 6` | Go To Workspace 6 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 7` | Go To Workspace 7 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 8` | Go To Workspace 8 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 9` | Go To Workspace 9 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + 0` | Go To Workspace 10 | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


## Send To Workspace

* Config Sample / [SendToDesktop](config/openbox/openbox-gen-rc/Section/Keybind/SendToDesktop.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Win + a` | Send To Previous Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + s` | Send To Next Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Win + z` | Send To Last Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Win + k` | Send To Up Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + j` | Send To Down Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Win + h` | Send To Left Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + l` | Send To Right Workspace | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Win + 1` | Send To Workspace 1 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 2` | Send To Workspace 2 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 3` | Send To Workspace 3 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 4` | Send To Workspace 4 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 5` | Send To Workspace 5 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 6` | Send To Workspace 6 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 7` | Send To Workspace 7 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 8` | Send To Workspace 8 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 9` | Send To Workspace 9 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Alt + Win + 0` | Send To Workspace 10 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


| Key | Description | Doc |
| --- | --- | --- |
| `Win + 1` | Send To Workspace 1 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 2` | Send To Workspace 2 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 3` | Send To Workspace 3 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 4` | Send To Workspace 4 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 5` | Send To Workspace 5 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 6` | Send To Workspace 6 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 7` | Send To Workspace 7 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 8` | Send To Workspace 8 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 9` | Send To Workspace 9 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + 0` | Send To Workspace 10 | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


## Window Switch

* Config Sample / [WindowSwitch](config/openbox/openbox-gen-rc/Section/Keybind/WindowSwitch.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + a` | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + s` | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


| Key | Description | Doc |
| --- | --- | --- |
| `Win + k` | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + j` | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


| Key | Description | Doc |
| --- | --- | --- |
| `Win + l` | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + h` | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


| Key | Description | Doc |
| --- | --- | --- |
| `Win + [` | Previous Window | [PreviousWindow](http://openbox.org/wiki/Help:Actions#PreviousWindow) |
| `Win + ]` | Next Window | [NextWindow](http://openbox.org/wiki/Help:Actions#NextWindow) |


## Window Raise or Lower

* Config Sample / [WindowRaiseLower](config/openbox/openbox-gen-rc/Section/Keybind/WindowRaiseLower.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + u` | Raise or Lower Window | [RaiseLower](http://openbox.org/wiki/Help:Actions#RaiseLower) |
| `Win + Shift + PageUp` | Raise Window | [Raise](http://openbox.org/wiki/Help:Actions#Raise) |
| `Win + Shift + PageDown` | Lower Window | [Lower](http://openbox.org/wiki/Help:Actions#Lower) |


## Window Close

* Config Sample / [WindowClose](config/openbox/openbox-gen-rc/Section/Keybind/WindowClose.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + q` | Window Close | [Close](http://openbox.org/wiki/Help:Actions#Close) |
| `Alt + Shift + q` | Window Close | [Close](http://openbox.org/wiki/Help:Actions#Close) |
| `Alt + F4` | Window Close | [Close](http://openbox.org/wiki/Help:Actions#Close) |


## Window Iconify

* Config Sample / [WindowIconify](config/openbox/openbox-gen-rc/Section/Keybind/WindowIconify.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + x` | Window Iconify | [Iconify](http://openbox.org/wiki/Help:Actions#Iconify) |
| `Win + n` | Window Iconify | [Iconify](http://openbox.org/wiki/Help:Actions#Iconify) |


## Window Toggle Maximize

* Config Sample / [WindowToggleMaximize](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleMaximize.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + w` | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |
| `Win + m` | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |


## Window Toggle Fullscreen

* Config Sample / [WindowToggleFullscreen](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleFullscreen.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + f` | Window Toggle Fullscreen | [ToggleFullscreen](http://openbox.org/wiki/Help:Actions#ToggleFullscreen) |


## Window Toggle Decorations

* Config Sample / [WindowToggleDecorations](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleDecorations.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + v` | Window Toggle Decorations | [ToggleDecorations](http://openbox.org/wiki/Help:Actions#ToggleDecorations) |


## Window Toggle Shade

* Config Sample / [WindowToggleShade](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleShade.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + y` | Window Toggle Shade | [ToggleShade](http://openbox.org/wiki/Help:Actions#ToggleShade) |


## Window Toggle AlwaysOnTop

* Config Sample / [WindowToggleAlwaysOnTop](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnTop.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + t` | Window Toggle AlwaysOnTop | [ToggleAlwaysOnTop](http://openbox.org/wiki/Help:Actions#ToggleAlwaysOnTop) |


## Window Toggle AlwaysOnBottom

* Config Sample / [WindowToggleAlwaysOnBottom](config/openbox/openbox-gen-rc/Section/Keybind/WindowToggleAlwaysOnBottom.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + b` | Window Toggle AlwaysOnBottom | [ToggleAlwaysOnBottom](http://openbox.org/wiki/Help:Actions#ToggleAlwaysOnBottom) |


## Window SendToLayer Normal

* Config Sample / [WindowSendToLayer](config/openbox/openbox-gen-rc/Section/Keybind/WindowSendToLayer.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + g` | Window SendToLayer Normal | [SendToLayer](http://openbox.org/wiki/Help:Actions#SendToLayer) |


## Window Begin Move

* Config Sample / [WindowBeginMove](config/openbox/openbox-gen-rc/Section/Keybind/WindowBeginMove.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + e` | Window Begin Move | [Move](http://openbox.org/wiki/Help:Actions#Move) |


## Window Begin Resize

* Config Sample / [WindowBeginResize](config/openbox/openbox-gen-rc/Section/Keybind/WindowBeginResize.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + r` | Window Begin Resize | [Resize](http://openbox.org/wiki/Help:Actions#Resize) |


## Window Tiling

* Config Sample / [WindowTiling](config/openbox/openbox-gen-rc/Section/Keybind/WindowTiling.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + Ctrl + u` | Tiling Window Horizontal (North-South) (Top-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + i` | Tiling Window Vertical (West-East) (Left-Right) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + o` | Restore Window | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |


## Window Tiling Move / Side

* Config Sample / [WindowTilingMoveSide](config/openbox/openbox-gen-rc/Section/Keybind/WindowTilingMoveSide.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + Ctrl + k` | Tiling Window Move To North (Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + j` | Tiling Window Move To South (Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + h` | Tiling Window Move To West (Left) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + l` | Tiling Window Move To East (Right) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |

| Key | Description | Doc |
| --- | --- | --- |
| `Win + Ctrl + Up` | Tiling Window Move To North (Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + Down` | Tiling Window Move To South (Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + Left` | Tiling Window Move To West (Left) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Ctrl + Right` | Tiling Window Move To East (Right) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |

## Window Tiling Move / Corner

* Config Sample / [WindowTilingMoveCorner](config/openbox/openbox-gen-rc/Section/Keybind/WindowTilingMoveCorner.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Win + Shift + k` | Tiling Window Move To West-North (Left-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + j` | Tiling Window Move To East-North (Right-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + h` | Tiling Window Move To West-South (Left-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + l` | Tiling Window Move To East-South (Right-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |


| Key | Description | Doc |
| --- | --- | --- |
| `Win + Shift + Up` | Tiling Window Move To West-North (Left-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + Down` | Tiling Window Move To East-North (Right-Top) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + Left` | Tiling Window Move To West-South (Left-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |
| `Win + Shift + Right` | Tiling Window Move To East-South (Right-Bottom) | [MoveResizeTo](http://openbox.org/wiki/Help:Actions#MoveResizeTo) |


## Rofi

* Config Sample / [Rofi](config/openbox/openbox-gen-rc/Section/Keybind/Rofi.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Shift + r` | Rofi Show Run | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + d` | Rofi Show Drun | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + w` | Rofi Show Window | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


## Launch App

* Config Sample / [LaunchApp](config/openbox/openbox-gen-rc/Section/Keybind/LaunchApp.php)

### Terminal

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Enter` | Launch Terminal (sakura -m) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + a` | Launch Terminal (sakura -m) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + t` | Launch Quake Terminal (tilix --quake) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |

### Misc

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Shift + f` | Launch File Manager (pcmanfm-qt) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + g` | Launch File Manager (nautilus) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + b` | Launch Web Browser (firefox) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shift + e` | Launch Text Editor (gedit) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


## Volume

| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Shift + v` | Launch Volume Control (mate-volume-control) | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + m` | Volume Toggle Mute | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |


| Key | Description | Doc |
| --- | --- | --- |
| `Alt + Shitf + ,` | Volume Decrease | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Shitf + .` | Volume Increase | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Ctrl + ,` | Volume Decrease Slowly | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Ctrl + .` | Volume Increase Slowly | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |

> collision occurs on bash emacs mode
> * `Alt + ,`
> * `Alt + .`


| Key | Description | Doc |
| --- | --- | --- |
| `XF86AudioMute` | Volume Toggle Mute | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `XF86AudioLowerVolume` | Volume Decrease | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `XF86AudioRaiseVolume` | Volume Increase | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |

## Print

* Config Sample / [Print](config/openbox/openbox-gen-rc/Section/Keybind/Print.php)

| Key | Description | Doc |
| --- | --- | --- |
| `Print` | Rofi Show Run | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |
| `Alt + Print` | Rofi Show Drun | [Execute](http://openbox.org/wiki/Help:Actions#Execute) |



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
