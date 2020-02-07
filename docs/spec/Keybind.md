
# Spec / Keybind

## Subject

* [Menu](#menu)
* [System](#system)
* [Launch App](#launch-app)
* [Workspace](#workspace)
* [Show Desktop](#show-desktop)
* [Window](#window)


## Implement

* [openbox](../../prototype/de-box/play-openbox/spec-keybind.md)
* [xfce](../../prototype/de-basic/play-xfce/spec-keybind.md)
* [bspwm](../../prototype/de-tiling/play-bspwm/spec-keybind.md)
* [awesomewm](../../concept/awesome-wm/demo-start/demo-config-awesome-github-master/spec-keybind.md)


## Keys

### Mean

| Key | Description |
| --- | --- |
| `Shift` | 'Shift' |
| `Ctrl` | 'Control' |
| `Win` | 'Mod4' (Super)|
| `Alt` | 'Mod1' |

### Tips

| Key | Description |
| --- | --- |
| `Win` | For Window (Client) |
| `Alt` | For Workspace (Tag) (Desktop) |


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
| `Alt + Shift + c` | Reconfigure |


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
| `Alt + z` | Switch to Last Workspace (Last Previous) |


## Show Desktop

| Key | Description |
| --- | --- |
| `Win + d` | Toggle Show Desktop |


## Window

| Key | Description |
| --- | --- |
| `Win + a` | Switch to Previous Window |
| `Win + s` | Switch to Next Window |
| `Win + z` | Switch to Last Window (Last Previous) |


| Key | Description |
| --- | --- |
| `Win + q` | Window Close |
| `Win + w` | Window Maximize |
| `Win + x` | Window Minimize (Iconify) |


| Key | Description |
| --- | --- |
| `Win + f` | Window Toggle Fullscreen |
| `Win + v` | Window Toggle Decorations |
| `Win + y` | Window Toggle Shade |


| Key | Description |
| --- | --- |
| `Win + t` | Window Toggle AlwaysOnTop |
| `Win + g` | Window SendToLayer Normal |
| `Win + b` | Window Toggle AlwaysOnBottom |


| Key | Description |
| --- | --- |
| `Win + e` | Window Begin Move |
| `Win + r` | Window Begin Resize |


## Reference

* [i3 Reference Card](https://i3wm.org/docs/refcard.html)
* [i3 User’s Guide](https://i3wm.org/docs/userguide.html)
