
# Openbox / Mousebind


## Subject

* [Config Sample](#config-sample)
* [On Desktop](#on-desktop)
* [Go To Desktop](#go-to-desktop)
* [Send To Desktop](#send-to-desktop)
* [Window Move](#window-move)
* [Window Resize](#window-resize)
* [Window Toggle Maximize](#window-toggle-maximize)
* [Window Toggle Decorations](#window-toggle-decorations)
* [Window Toggle Fullscreen](#window-toggle-fullscreen)


## Config Sample

* [Context Root](config/openbox/openbox-gen-rc/Section/Mousebind/Root.php)
* [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)
* [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)
* [Context Client](config/openbox/openbox-gen-rc/Section/Mousebind/Client.php)
* [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)
* [Context MoveResize](config/openbox/openbox-gen-rc/Section/Mousebind/MoveResize.php)


## On Desktop

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Left Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `[Mouse Middle Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Workspace Menu (Window List) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) |
| `[Mouse Right Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Root Menu  | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) |


* Config Sample / [Context Root](config/openbox/openbox-gen-rc/Section/Mousebind/Root.php)


## Go To Desktop

### On Desktop

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `[Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |

* Config Sample / [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)


### On Desktop or On Frame

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + [Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + [Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |

* Config Sample / [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)
* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)


## Send To Desktop

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Alt + [Mouse Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Previous Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + Alt + [Mouse Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Next Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)


## Window Move

### On Frame or On Titlebar

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Left Drag]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Move Window | [Move](http://openbox.org/wiki/Help:Actions#Move) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)
* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)


### On Titlebar

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Left Drag]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Move Window | [Move](http://openbox.org/wiki/Help:Actions#Move) |

* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)


## Window Resize

### On Frame or On Titlebar

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Right Drag]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Resize Window  | [Resize](http://openbox.org/wiki/Help:Actions#Resize) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)
* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)


## Window Toggle Maximize

### On Frame

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Left DoubleClick]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)

### On Titlebar

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `[Mouse Left Click]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Maximize | [ToggleMaximize](http://openbox.org/wiki/Help:Actions#ToggleMaximize) |

* Config Sample / [Context Titlebar](config/openbox/openbox-gen-rc/Section/Mousebind/Titlebar.php)


## Window Toggle Decorations

### On Frame

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Middle DoubleClick]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Decorations | [ToggleDecorations](http://openbox.org/wiki/Help:Actions#ToggleDecorations) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)



## Window Toggle Fullscreen

### On Frame

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + [Mouse Right DoubleClick]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Window Toggle Fullscreen | [ToggleFullscreen](http://openbox.org/wiki/Help:Actions#ToggleFullscreen) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)




## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Mouse)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions#ShowMenu)
