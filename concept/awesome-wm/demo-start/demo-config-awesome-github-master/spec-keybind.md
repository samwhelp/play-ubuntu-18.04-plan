
# Awesome / Keybind


## Subject

* [Hotkeys Help](#hotkeys-help)
* [Awesome](#awesome)
* [Menu](#menu)
* [System](#system)
* [Launch App](#launch-app)
* [Show Desktop](#show-desktop)
* [Tag](#Tag)
* [Window](#window)
* [Layout](#layout)
* [Volume](#volume)


## Link

* [docs-spec-keybind](../../../../docs/spec/Keybind.md)
* [spec-mousebind](spec-mousebind.md)


## Manual

* https://awesomewm.org/doc/
* https://awesomewm.org/apidoc/
* https://awesomewm.org/apidoc/input_handling/awful.keyboard.html


## Config File

* [~/.config/awesome/rc.lua](rc.lua)
* [~/.config/awesome/style/experiment/rc.lua](style/experiment/rc.lua)

> * Search `append_global_keybindings`
> * Search `append_client_keybindings`
> * Search `request::default_keybindings`


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


## Hotkeys Help

| Button | Description |
| --- | --- |
| `Win + F1` | Show Hotkeys Help |


## Awesome

| Button | Description |
| --- | --- |
| `Alt + F1` | Show The MenuBar |
| `Alt + F2` | Run Prompt |
| `Alt + F3` | Lua Execute Prompt |


## Menu

| Key | Description |
| --- | --- |
| `Win + Space` | Popup Root Menu |
| `Win + c` | Popup Workspace Menu (Window List) (Client List) |


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



## Show Desktop

| Key | Description |
| --- | --- |
| `Win + d` | Show Desktop |


## Tag

## Tag / Switch

| Key | Description |
| --- | --- |
| `Alt + [0-9]` | Switch to Specific Tag |
| `Win + [0-9]` | Move a Window to Specific Tag |

| Key | Description |
| --- | --- |
| `Alt + a` | Switch to Previous Tag |
| `Alt + s` | Switch to Next Tag |
| `Alt + z` | Switch to Perior Tag |

| Key | Description |
| --- | --- |
| `Alt + h` | Switch to Previous Tag |
| `Alt + l` | Switch to Next Tag |

| Key | Description |
| --- | --- |
| `Alt + [` | Switch to Previous Tag |
| `Alt + ]` | Switch to Next Tag |


## Window

## Window / Switch

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
| `Win + u` | Switch to Urgent Window |

### Window Close

| Key | Description |
| --- | --- |
| `Win + q` | Window Close |

### Window Fullscreen

| Key | Description |
| --- | --- |
| `Win + f` | Window Toggle Fullscreen |

### Window Minimize

| Key | Description |
| --- | --- |
| `Win + x` | Window Minimize (Iconify) |
| `Win + n` | Window Minimize (Iconify) |

| Key | Description |
| --- | --- |
| `Win + Shift + x` | Window Unminimize (Uniconify) |
| `Win + Shift + n` | Window Unminimize (Uniconify) |


### Window Maximize

| Key | Description |
| --- | --- |
| `Win + w` | Window Toggle Maximize |
| `Win + m` | Window Toggle Maximize |
| `Win + Shift + m` | Window Toggle Maximize Horizontally |
| `Win + Ctrl + m` | Window Toggle Maximize Vertically |


### Window AlwaysOnTop

| Key | Description |
| --- | --- |
| `Win + t` | Window Toggle AlwaysOnTop |


## Layout

### Layout Toggle


| Key | Description |
| --- | --- |
| `Alt + k` | Previous Layout |
| `Alt + j` | Next Layout |

| Key | Description |
| --- | --- |
| `Alt + :` | Previous Layout |
| `Alt + ;` | Next Layout |

| Key | Description |
| --- | --- |
| `Alt + grave` | Previous Layout |
| `Alt + Tab` | Next Layout |

> grave means backquote `


| Key | Description |
| --- | --- |
| `Alt + v` | Toggle focused window between tiled and floating |


### Layout / Swap

| Key | Description |
| --- | --- |
| `Alt + Shift + h` | Swap with previous window in tag |
| `Alt + Shift + l` | Swap with next window in tag |
| `Alt + Shift + p` | Move current window to master area |


### Layout / Master

| Key | Description |
| --- | --- |
| `Alt + Ctrl + h` | Decrease master width factor |
| `Alt + Ctrl + l` | Increase master width factor |


| Key | Description |
| --- | --- |
| `Alt + Ctrl + k` | Increase the number of master clients |
| `Alt + Ctrl + j` | Decrease the number of master clients |


### Layout / Stack

| Key | Description |
| --- | --- |
| `Alt + Ctrl + ,` | Decrease the number of columns |
| `Alt + Ctrl + .` | Increase the number of columns |


> * (,) for (<)
> * (.) for (>)


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
