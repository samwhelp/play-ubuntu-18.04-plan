
# Xfce / Keybind


## Subject

* [Menu](#menu)
* [Application Finder](#application-finder)
* [Launch App](#launch-app)
* [Show Desktop](#show-desktop)
* [Workspace](#workspace)
* [Window](#window)
* [Volume](#volume)


## Link

* [docs-spec-keybind](../../../docs/spec/Keybind.md)


## Config Tool

### GUI

* [xfwm4-settings](https://manpages.ubuntu.com/manpages/bionic/en/man1/xfwm4-settings.1.html)
* [xfce4-keyboard-settings](https://manpages.ubuntu.com/manpages/bionic/en/man1/xfce4-keyboard-settings.1.html)
* [xfce4-settings-editor](https://manpages.ubuntu.com/manpages/bionic/en/man1/xfce4-settings-editor.1.html) (channel: xfce4-keyboard-shortcuts)

### CLI

* [xfconf-query](https://manpages.ubuntu.com/manpages/bionic/en/man1/xfconf-query.1.html) (channel: xfce4-keyboard-shortcuts)


## Config File

* [xfce4-keyboard-shortcuts.xml](config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml)

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
| `Alt + F1` | Popup WhiskerMenu |


## Application Finder

| Key | Description |
| --- | --- |
| `Alt + F2` | Popup Application Finder (Simple) |
| `Alt + F3` | Popup Application Finder |


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


### Workspace Add Or Del

| Key | Description |
| --- | --- |
| `Alt + Insert` | Add Workspace |
| `Alt + Delete` | Delete Workspace |


### Go To Workspace

| Key | Description |
| --- | --- |
| `Alt + a` | Go To Previous Workspace |
| `Alt + s` | Go To Next Workspace |


| Key | Description |
| --- | --- |
| `Alt + k` | Go To Up Workspace |
| `Alt + j` | Go To Down Workspace |
| `Alt + h` | Go To Left Workspace |
| `Alt + l` | Go To Right Workspace |


| Key | Description |
| --- | --- |
| `Alt + 1` | Go To Workspace 1 |
| `Alt + 2` | Go To Workspace 2 |
| `Alt + 3` | Go To Workspace 3 |
| `Alt + 4` | Go To Workspace 4 |
| `Alt + 5` | Go To Workspace 5 |
| `Alt + 6` | Go To Workspace 6 |
| `Alt + 7` | Go To Workspace 7 |
| `Alt + 8` | Go To Workspace 8 |
| `Alt + 9` | Go To Workspace 9 |
| `Alt + 0` | Go To Workspace 10 |


### Send To Workspace

| Key | Description |
| --- | --- |
| `Alt + Win + a` | Send To Previous Workspace |
| `Alt + Win + s` | Send To Next Workspace |


| Key | How to set | Description |
| --- | --- | --- |
| `Alt + Win + k` | Send To Up Workspace |
| `Alt + Win + j` | Send To Down Workspace |
| `Alt + Win + h` | Send To Left Workspace |
| `Alt + Win + l` | Send To Right Workspace |


| Key | Description |
| --- | --- |
| `Win + 1` | Send To Workspace 1 |
| `Win + 2` | Send To Workspace 2 |
| `Win + 3` | Send To Workspace 3 |
| `Win + 4` | Send To Workspace 4 |
| `Win + 5` | Send To Workspace 5 |
| `Win + 6` | Send To Workspace 6 |
| `Win + 7` | Send To Workspace 7 |
| `Win + 8` | Send To Workspace 8 |
| `Win + 9` | Send To Workspace 9 |
| `Win + 0` | Send To Workspace 10 |


## Show Desktop

| Key | Description |
| --- | --- |
| `Win + d` | Toggle Show Desktop |


## Window

### Window Switch

| Key | Description |
| --- | --- |
| `Win + a` | Switch to Previous Window |
| `Win + s` | Switch to Next Window |
| `Win + Tab` | Show Window for Same Application |
| `Win + i` | Switch Application |


| Key | Description |
| --- | --- |
| `Win + u` | Raise or Lower Window |
| `Win + Shift + PageUp` | Raise Window |
| `Win + Shift + PageDown` | Lower Window |


### Window Close

| Key | Description |
| --- | --- |
| `Win + q` | Window Close |


### Window Minimize (Iconify)

| Key | Description |
| --- | --- |
| `Win + x` | Window Minimize (Iconify) |


### Window Toggle Maximize

| Key | Description |
| --- | --- |
| `Win + w` | Maximize Window |
| `Win + Shift + w` | Maximize Window Horizontally (Left-Right)|
| `Win + Ctrl + w` | Maximize Window Vertically (Top-Bottom) |


### Window Toggle Fullscreen

| Key | Description |
| --- | --- |
| `Win + f` | Window Toggle Fullscreen |
| `F11` | Window Toggle Fullscreen |


### Window Toggle Above

| Key | Description |
| --- | --- |
| `Win + t` | Window Toggle Above |


### Window Begin Move

| Key | Description |
| --- | --- |
| `Win + e` | indow Begin Move |


### Window Begin Resize

| Key | Description |
| --- | --- |
| `Win + r` | Window Begin Resize |


### Window Fill

| Key | Description |
| --- | --- |
| `Win + z` | Window Fill |
| `Win + Shift + z` | Window Fill Horizontally (Left-Right)|
| `Win + Ctrl + z` | Window Fill Vertically (Top-Bottom) |


### Window Tiling Move / Side

| Key | Description |
| --- | --- |
| `Win + Ctrl + k` | Window Tiling Move To North (Top) |
| `Win + Ctrl + j` | Window Tiling Move To South (Bottom) |
| `Win + Ctrl + h` | Window Tiling Move To West (Left) |
| `Win + Ctrl + l` | Window Tiling Move To East (Right) |


## Window Tiling Move / Corner

| Key | Description |
| --- | --- |
| `Win + Shift + k` | Window Tiling Move To West-North (Left-Top) |
| `Win + Shift + j` | Window Tiling Move To East-North (Right-Top) |
| `Win + Shift + h` | Window Tiling Move To West-South (Left-Bottom) |
| `Win + Shift + l` | Window Tiling Move To East-South (Right-Bottom) |


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
