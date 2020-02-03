
# Openbox / Mousebind


## Subject

* [Manual](#manual)
* [Config File](#config-file)
* [Config Sample](#config-sample)
* [On Desktop](#on-desktop)
* [Go To Workspace](#go-to-workspace)
* [Send To Workspace](#send-to-workspace)
* [Window Move](#window-move)
* [Window Resize](#window-resize)
* [Window Toggle Maximize](#window-toggle-maximize)
* [Window Toggle Decorations](#window-toggle-decorations)
* [Window Toggle Fullscreen](#window-toggle-fullscreen)
* [Window Toggle Shade](#window-toggle-shade)
* [Window Show Client Menu](#window-show-client-menu)


## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Mouse)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions#ShowMenu)


## Config File

* [~/.config/openbox/rc.xml](config/openbox/rc.xml)

> Search `<mouse>`

## Config Sample

* [Context Root](config/openbox/openbox-gen-rc/Section/Mousebind/Root.php)
* [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)
* [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)
* [Context Client](config/openbox/openbox-gen-rc/Section/Mousebind/Client.php)
* [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)
* [Context MoveResize](config/openbox/openbox-gen-rc/Section/Mousebind/MoveResize.php)


## On Desktop

* Config Sample / [Context Root](config/openbox/openbox-gen-rc/Section/Mousebind/Root.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Left Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `[Mouse Middle Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Workspace Menu (Window List) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) |
| `[Mouse Right Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Root Menu (client-list-combined-menu) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (root-menu) |


## Go To Workspace

### On Desktop

* Config Sample / [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `[Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


### On Desktop or On Frame

* Config Sample / [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)
* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + [Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + [Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |


## Send To Workspace

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Alt + [Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Previous Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + Alt + [Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Next Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |


## Window Move

### On Frame or On Titlebar

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)
* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Left Drag]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Move Window | [Move](http://openbox.org/wiki/Help:Actions#Move) |


### On Titlebar

* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Left Drag]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Move Window | [Move](http://openbox.org/wiki/Help:Actions#Move) |


## Window Resize

### On Frame or On Titlebar

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)
* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Right Drag]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Resize Window  | [Resize](http://openbox.org/wiki/Help:Actions#Resize) |


## Window Toggle Maximize

### On Frame

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Left DoubleClick]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |

### On Titlebar

* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Left Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |


## Window Toggle Decorations

### On Frame

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Middle DoubleClick]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Decorations | [ToggleDecorations](http://openbox.org/wiki/Help:Actions#ToggleDecorations) |


## Window Toggle Fullscreen

### On Frame

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Right DoubleClick]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Fullscreen | [ToggleFullscreen](http://openbox.org/wiki/Help:Actions#ToggleFullscreen) |


## Window Toggle Shade

### On Titlebar

* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Shade | [Shade](http://openbox.org/wiki/Help:Actions#Shade) |
| `[Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Unshade | [Unshade](http://openbox.org/wiki/Help:Actions#Unshade) |


## Window Show Client Menu

### On Titlebar

* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Right Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Show Client Menu | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) (client-menu) |
