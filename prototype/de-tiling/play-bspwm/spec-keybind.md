
# Bspwm / Keybind


## Subject

* [System](#system)
* [Launch App](#launch-app)
* [Workspace](#workspace)
* [Window](#window)
* [Layout](#layout)
* [Volume](#volume)


## Link

* [docs-spec-keybind](../../../docs/spec/Keybind.md)
* [spec-mousebind](spec-mousebind.md)


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


## System

| Key | Description |
| --- | --- |
| `Alt + shift + x` | Quit bspwm |
| `Alt + Shift + c` | Reload sxhkd config | [~/.config/bspwm/sxhkd/sxhkdrc](config/sxhkd/sxhkdrc#L37) |


## Launch App

### Terminal

| Key | Description |
| --- | --- |
| `Alt + Enter` | Launch Terminal (sakura) |
| `Alt + Shift + a` | Launch Terminal (xterm) |
| `Alt + Shift + t` | Launch Terminal (urxvt) |


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


### demnu

| Key | Description |
| --- | --- |
| `Alt + Shift + i` | Launch dmenu (dmenu_run) |


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


## Layout


| Key | Description |
| --- | --- |
| `Alt + grave` | Alternate between the tiled and monocle layout |
| `Alt + Tab` | Alternate between the tiled and monocle layout |

> grave means `

| Key | Description |
| --- | --- |
| `Alt + k` | Alternate between the tiled and monocle layout |
| `Alt + j` | Alternate between the tiled and monocle layout |

| Key | Description |
| --- | --- |
| `Alt + ;` | Alternate between the tiled and monocle layout |
| `Alt + '` | Alternate between the tiled and monocle layout |


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
