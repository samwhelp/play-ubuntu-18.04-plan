
# Openbox / Mousebind


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
| `Left Click` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Desktop | [ToggleShowDesktop](http://openbox.org/wiki/Help:Actions#ToggleShowDesktop) |
| `Middle Click` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Workspace Menu (Window List) | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) |
| `Right Click` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Toggle Show Root Menu  | [ShowMenu](http://openbox.org/wiki/Help:Actions#ShowMenu) |


* Config Sample / [Context Root](config/openbox/openbox-gen-rc/Section/Mousebind/Root.php)


## Go To Desktop

### On Desktop

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Middle Up` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Middle Down` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |

* Config Sample / [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)


### On Desktop or On Frame

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Alt + [Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Previous Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |
| `Alt + [Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Go To Next Desktop | [GoToDesktop](http://openbox.org/wiki/Help:Actions#GoToDesktop) |

* Config Sample / [Context Desktop](config/openbox/openbox-gen-rc/Section/Mousebind/Desktop.php)
* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)


## Send To Desktop

| Button | How to set | Description | Doc |
| --- | --- | --- | --- |
| `Win + Alt + [Middle Up]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Previous Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |
| `Win + Alt + [Middle Down]` | [~/.config/openbox/rc.xml](config/openbox/rc.xml#L) | Send To Next Desktop | [SendToDesktop](http://openbox.org/wiki/Help:Actions#SendToDesktop) |

* Config Sample / [Context Frame](config/openbox/openbox-gen-rc/Section/Mousebind/Frame.php)




## Manual

* [Help:Configuration](http://openbox.org/wiki/Help:Configuration#Mouse)
* [Help:Bindings](http://openbox.org/wiki/Help:Bindings#Mouse_bindings)
* [Help:Actions](http://openbox.org/wiki/Help:Actions#ShowMenu)
