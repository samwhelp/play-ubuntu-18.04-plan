
# gtk-bookmarks

## Path

* ~/.config/gtk-3.0/bookmarks ($HOME/.config/gtk-3.0/bookmarks)

## Format


| path | name (alias) |
| -- | -- |
| file:///home/demo/Projects | prj |

Ex:

run

``` sh
$ cat ~/.config/gtk-3.0/bookmarks
```

show

```
file:///home/demo/Projects prj
file:///home/demo/Videos mov
```

## File Manager

* pcmanfm-qt
* nautilus

## Search

Search [ [~/.config/gtk-3.0/bookmarks](https://www.google.com.tw/search?q=~%2F.config%2Fgtk-3.0%2Fbookmarks)]

* https://developer.gnome.org/gtk3/stable/ch32s03.html

```
Changes in GTK+ 3.6

The accessibility bridge code that exports accessible objects on the bus is now used by default; atk-bridge has been converted into a library that GTK+ links against. To void the linking, pass --without-atk-bridge when configuring GTK+.

GDK threading support has been deprecated. It is recommended to use g_idle_add(), g_main_context_invoke() and similar funtions to make all GTK+ calls from the main thread.

GTK+ now follows the XDG Base Directory specification for user configuration and data files. In detail,

    $XDG_CONFIG_HOME/gtk-3.0/custom-papers is the new location for $HOME/.gtk-custom-papers
    $XDG_CONFIG_HOME/gtk-3.0/bookmarks is the new location for $HOME/.gtk-bookmarks
    $XDG_DATA_HOME/themes is preferred over $HOME/.themes
    $XDG_DATA_HOME/icons is preferred over $HOME/.icons.

Existing files from the old location will still be read if the new location does not exist.

$HOME/.gtk-3.0 is no longer in the default module load path. If you want to load modules from there, add it to the GTK_PATH environment variable.
```
