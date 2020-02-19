
# Spec / Keybind

## Subject

* [Menu](#menu)
* [System](#system)
* [Launch App](#launch-app)
* [Show Desktop](#show-desktop)
* [Workspace](#workspace)
* [Window](#window)
* [Layout](#layout)
* [Volume](#volume)


## Implement

* [openbox](../../prototype/de-box/play-openbox/spec-keybind.md)
* [spectrwm](../../prototype/de-tiling/play-spectrwm/spec-keybind.md)
* [awesomewm](../../concept/awesome-wm/demo-start/demo-config-awesome-github-master/spec-keybind.md)
* [bspwm](../../prototype/de-tiling/play-bspwm/spec-keybind.md)
* [xfce](../../prototype/de-basic/play-xfce/spec-keybind.md)

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



## Menu

| Key | Description |
| --- | --- |
| `Win + Space` | Popup Root Menu |
| `Win + c` | Popup Workspace Menu (Window List) (Client List) |
| `Alt + Space` | Popup Client Menu |


## System

| Key | Description |
| --- | --- |
| `Alt + Shift + z` | Shutdown |
| `Alt + Shift + x` | Logout |
| `Alt + Shift + c` | Reconfigure or Restart(Not Reboot) |


## Launch App

### Terminal

| Key | Description |
| --- | --- |
| `Alt + Enter` | Launch Terminal (sakura -m) |
| `Alt + Shift + a` | Launch Terminal (sakura -m) |
| `Alt + Shift + t` | Toggle Drop Down Terminal (tilix --quake) |

### Rofi

| Key | Description |
| --- | --- |
| `Alt + Shift + r` | Launch Rofi (rofi -show run) |
| `Alt + Shift + w` | Launch Rofi (rofi -show window -show-icons) |
| `Alt + Shift + d` | Launch Rofi (rofi -show drun -show-icons) |

### Misc

| Key | Description |
| --- | --- |
| `Alt + Shift + f` | Launch File Manager (pcmanfm-qt) |
| `Alt + Shift + g` | Launch File Manager (nautilus) |
| `Alt + Shift + b` | Launch Web Browser (firefox) |
| `Alt + Shift + e` | Launch Text Editor (gedit) |


## Workspace

| Key | Description |
| --- | --- |
| `Alt + [0-9]` | Switch to Specific Workspace |
| `Win + [0-9]` | Move a Window to Specific Workspace |

| Key | Description |
| --- | --- |
| `Alt + a` | Switch to Previous Workspace |
| `Alt + s` | Switch to Next Workspace |
| `Alt + z` | Switch to Perior Workspace |

| Key | Description |
| --- | --- |
| `Alt + h` | Switch to Previous Workspace |
| `Alt + l` | Switch to Next Workspace |

| Key | Description |
| --- | --- |
| `Alt + [` | Switch to Previous Workspace |
| `Alt + ]` | Switch to Next Workspace |


## Show Desktop

| Key | Description |
| --- | --- |
| `Win + d` | Toggle Show Desktop |


## Window

| Key | Description |
| --- | --- |
| `Win + a` | Switch to Previous Window |
| `Win + s` | Switch to Next Window |
| `Win + z` | Switch to Perior Window |

| Key | Description |
| --- | --- |
| `Win + h` | Switch to Previous Window |
| `Win + l` | Switch to Next Window |

| Key | Description |
| --- | --- |
| `Win + [` | Switch to Previous Window |
| `Win + ]` | Switch to Next Window |

| Key | Description |
| --- | --- |
| `Win + q` | Window Close |
| `Win + w` | Window Maximize |
| `Win + x` | Window Minimize (Iconify) |


| Key | Description |
| --- | --- |
| `Win + y` | Window Toggle Shade |
| `Win + f` | Window Toggle Fullscreen |
| `Win + v` | Window Toggle Decorations |
| `Alt + v` | Window Toggle Floating or Tiled |



| Key | Description |
| --- | --- |
| `Win + t` | Window Toggle AlwaysOnTop |
| `Win + g` | Window SendToLayer Normal |
| `Win + b` | Window Toggle AlwaysOnBottom |


| Key | Description |
| --- | --- |
| `Win + e` | Window Begin Move |
| `Win + r` | Window Begin Resize |


## Layout

### Layout Toggle

| Key | Description |
| --- | --- |
| `Alt + ;` | Toggle Layout Prev |
| `Alt + '` | Toggle Layout Next |


## Volume

| Key | Description |
| --- | --- |
| `Alt + Shift + v` | Launch Volume Control (mate-volume-control) |
| `Alt + m` | Volume Toggle Mute |


| Key | Description |
| --- | --- |
| `Alt + Shitf + ,` | Volume Decrease |
| `Alt + Shitf + .` | Volume Increase |
| `Alt + Ctrl + ,` | Volume Decrease Slowly |
| `Alt + Ctrl + .` | Volume Increase Slowly |

> collision occurs on bash emacs mode
> * `Alt + ,`
> * `Alt + .`


| Key | Description |
| --- | --- |
| `XF86AudioMute` | Volume Toggle Mute |
| `XF86AudioLowerVolume` | Volume Decrease |
| `XF86AudioRaiseVolume` | Volume Increase |


## Reference

* [i3 Reference Card](https://i3wm.org/docs/refcard.html)
* [i3 User’s Guide](https://i3wm.org/docs/userguide.html)
