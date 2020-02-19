
# Spectrwm / Keybind


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


## Manual

* $ man [spectrwm](http://manpages.ubuntu.com/manpages/bionic/en/man1/spectrwm.1.html)

## Config File

* [~/.spectrwm.conf](config/spectrwm/spectrwm.conf)
* [~/.config/spectrwm/spectrwm.keybind.conf](config/spectrwm/spectrwm.keybind.conf)


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

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Shift + z` | Shutdown | shutdown now |
| `Alt + Shift + x` | Logout | quit |
| `Alt + Shift + c` | Reconfigure or Restart(Not Reboot) | restart |


| Key | Description | Reference |
| --- | --- | --- |
| `Alt + d` | Menu (dmenu) | menu |
| `Alt + p` | Mouse Middle Button Click | button2 |


## Launch App

### Terminal

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Enter` | Launch Terminal (sakura) | program |
| `Alt + Shift + a` | Launch Terminal (xterm) | program |
| `Alt + Shift + t` | Launch Terminal (urxvt) | program |

### Rofi

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Shift + r` | Launch Rofi (rofi -show run) | program |
| `Alt + Shift + w` | Launch Rofi (rofi -show window -show-icons) | program |
| `Alt + Shift + d` | Launch Rofi (rofi -show drun -show-icons) | program |

### Misc

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Shift + f` | Launch File Manager (pcmanfm-qt) | program |
| `Alt + Shift + g` | Launch File Manager (nautilus) | program |
| `Alt + Shift + b` | Launch Web Browser (firefox) | program |
| `Alt + Shift + e` | Launch Text Editor (gedit) | program |



## Workspace

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + /` | Search Workspace | search_workspace |
| `Alt + Shift + /` | Rename Current Workspace | name_workspace |


| Key | Description | Reference |
| --- | --- | --- |
| `Alt + [0-9]` | Switch to Specific Workspace | ws_ |
| `Win + [0-9]` | Move a Window to Specific Workspace | mvws_ |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + a` | Switch to Previous Workspace | ws_prev_all |
| `Alt + s` | Switch to Next Workspace | ws_next_all |
| `Alt + z` | Switch to Last Visited Workspace | ws_prior |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + h` | Switch to Previous Workspace | ws_prev_all |
| `Alt + l` | Switch to Next Workspace | ws_next_all |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + [` | Switch to Previous Workspace | ws_prev_all |
| `Alt + ]` | Switch to Next Workspace | ws_next_all |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Win + a` | Move Window To Workspace Prev | ws_prev_move |
| `Alt + Win + s` | Move Window To Workspace Next | ws_next_move |
| `Alt + Win + h` | Move Window To Workspace Prev | ws_prev_move |
| `Alt + Win + l` | Move Window To Workspace Next | ws_next_move |


| Key | Description | Reference |
| --- | --- | --- |
| `Win + grave` | Switch to the first empty workspace. | ws_empty |

> grave means backquote `





## Window

### Window Focus

| Key | Description | Reference |
| --- | --- | --- |
| `Win + /` | Search the windows in the current workspace | search_win |

| Key | Description | Reference |
| --- | --- | --- |
| `Win + a` | Focus previous window in workspace | focus_prev |
| `Win + s` | Focus next window in workspace | focus_next |
| `Win + z` | Focus on main window in workspace | focus_main |

| Key | Description | Reference |
| --- | --- | --- |
| `Win + h` | Focus previous window in workspace | focus_prev |
| `Win + l` | Focus next window in workspace | focus_next |

| Key | Description | Reference |
| --- | --- | --- |
| `Win + [` | Focus previous window in workspace | focus_prev |
| `Win + ]` | Focus next window in workspace | focus_next |

| Key | Description | Reference |
| --- | --- | --- |
| `Win + u` | Focus urgent window | focus_urgent |


### Window Close

| Key | Description | Reference |
| --- | --- | --- |
| `Win + q` | Delete current window in workspace | wind_del |
| `Win + Shift + q` | Destroy current window in workspace | wind_kill |


### Window Fullscreen

| Key | Description | Reference |
| --- | --- | --- |
| `Win + f` | Window Toggle Fullscreen | fullscreen_toggle |


### Window Maximize

| Key | Description | Reference |
| --- | --- | --- |
| `Win + w` | Window Maximize | maximize_toggle |
| `Win + m` | Window Maximize | maximize_toggle |

### Window Minimize

| Key | Description | Reference |
| --- | --- | --- |
| `Win + x` | Window Iconify (Minimize) | iconify |
| `Win + n` | Window Iconify (Minimize) | iconify |

| Key | Description | Reference |
| --- | --- | --- |
| `Win + Shift + x` | Window Uniconify | uniconify |
| `Win + Shift + n` | Window Uniconify | uniconify |


### Window Raise

| Key | Description | Reference |
| --- | --- | --- |
| `Win + g` | Window Raise Toggle | raise_toggle |


### Window Move

On Floating

| Key | Description | Reference |
| --- | --- | --- |
| `Win + Shift + k` | Window Move Up | move_up |
| `Win + Shift + j` | Window Move Down | move_down |
| `Win + Shift + h` | Window Move Left | move_left |
| `Win + Shift + l` | Window Move Right | move_right |


### Window Resize

On Floating

| Key | Description | Reference |
| --- | --- | --- |
| `Win + Ctrl + k` | Window Height Shrink | height_shrink |
| `Win + Ctrl + j` | Window Height Grow | height_grow |
| `Win + Ctrl + h` | Window Width Shrink | width_shrink |
| `Win + Ctrl + l` | Window Width Grow | width_grow |




## Layout

### Layout Toggle

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Tab` | Cycle Layout | cycle_layout |
| `Alt + '` | Cycle Layout | cycle_layout |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + v` | Toggle focused window between tiled and floating | float_toggle |
| `Alt + ;` | Swap the master and stacking areas | flip_layout |


| Key | Description | Reference |
| --- | --- | --- |
| `Alt + n` | Toggle overall visibility of status bars | bar_toggle |
| `Alt + Shift + n` | Toggle status bar on current workspace | bar_toggle_ws |


### Layout / Swap

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Shift + h` | Swap with previous window in workspace | swap_prev |
| `Alt + Shift + l` | Swap with next window in workspace | swap_next |
| `Alt + Shift + p` | Move current window to master area | swap_main |


### Layout / Master

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Ctrl + l` | Grow master area | master_grow |
| `Alt + Ctrl + h` | Shrink master area | master_shrink |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Ctrl + k` | Remove windows from master area | master_del |
| `Alt + Ctrl + j` | Add windows to master area | master_add |


### Layout / Stack

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Ctrl + ,` | Add columns/rows to stacking area | stack_dec |
| `Alt + Ctrl + .` | Remove columns/rows from stacking area | stack_inc |

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Ctrl + space` | Reset layout | stack_reset |
| `Alt + Ctrl + /` | Balance master/stacking area | stack_balance |

> * (,) for (<)
> * (.) for (>)
> * (/) for (?)


## Volume

| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Shift + v` | Launch Volume Control (mate-volume-control) | program |
| `Alt + m` | Volume Toggle Mute | program |


| Key | Description | Reference |
| --- | --- | --- |
| `Alt + Shitf + ,` | Volume Decrease | program |
| `Alt + Shitf + .` | Volume Increase | program |
| `Alt + Ctrl + ,` | Volume Decrease Slowly | program |
| `Alt + Ctrl + .` | Volume Increase Slowly | program |


> collision occurs on bash emacs mode
> * `Alt + ,`
> * `Alt + .`
> * http://manpages.ubuntu.com/manpages/bionic/en/man3/readline.3readline.html#default%20key%20bindings
> * http://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#readlin


| Key | Description |
| --- | --- |
| `XF86AudioMute` | Volume Toggle Mute |
| `XF86AudioLowerVolume` | Volume Decrease |
| `XF86AudioRaiseVolume` | Volume Increase |
