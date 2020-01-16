
## Prepare / Install Package

### build-essential

run

``` sh
$ sudo apt-get install build-essential libgtk-3-dev libwnck-3-dev meson
```

### prepare-keybind-tool

run

``` sh
$ sudo apt-get install sxhkd
```

## How to build

run

``` sh
$ meson build
```

then run

``` sh
$ ninja -C build
```

or run

``` sh
cd build
ninja
```

## How to test

### test command

run

``` sh
$ ./build/toggle-show-desktop
```

### install command

``` sh
mkdir -p ~/bin/
install -m 755 build/toggle-show-desktop ~/bin/toggle-show-desktop
```

### keybind

``` sh
sxhkd -c keybind.conf
```

### shortcut key

Just [Alt + d] to toggle-show-desktop.


## Reference

* [https://gitlab.gnome.org/GNOME/libwnck/blob/master/doc/example-force-update.c](https://gitlab.gnome.org/GNOME/libwnck/blob/master/doc/example-force-update.c)
* [https://gitlab.gnome.org/GNOME/libwnck/blob/master/doc/example-lazy-initialization.c](https://gitlab.gnome.org/GNOME/libwnck/blob/master/doc/example-lazy-initialization.c)
* [wnck_screen_get_showing_desktop](https://developer.gnome.org/libwnck/stable/WnckScreen.html#wnck-screen-get-showing-desktop)
* [wnck_screen_toggle_showing_desktop](https://developer.gnome.org/libwnck/stable/WnckScreen.html#wnck-screen-toggle-showing-desktop)
* [wnck_screen_get_default](https://developer.gnome.org/libwnck/stable/WnckScreen.html#wnck-screen-get-default)
* [wnck_screen_force_update](https://developer.gnome.org/libwnck/stable/WnckScreen.html#wnck-screen-force-update)

## Reference / libwnck-3-dev

Package: [libwnck-3-dev](https://packages.ubuntu.com/bionic/libwnck-3-dev) / [filelist](https://packages.ubuntu.com/bionic/amd64/libwnck-3-dev/filelist)

``` sh
$ dpkg -L libwnck-3-dev
```

* [file:///usr/share/gtk-doc/html/libwnck-3.0/index.html](file:///usr/share/gtk-doc/html/libwnck-3.0/index.html)
* [file:///usr/share/gtk-doc/html/libwnck-3.0/getting-started.html](file:///usr/share/gtk-doc/html/libwnck-3.0/getting-started.html)


## Reference / tool-toggle-window-decoration

* [https://github.com/samwhelp/tool-toggle-window-decoration/tree/master/explore/libwnck-3-dev](https://github.com/samwhelp/tool-toggle-window-decoration/tree/master/explore/libwnck-3-dev)
* [https://github.com/samwhelp/tool-toggle-window-decoration/tree/master/explore/libwnck-3-dev/demo/start/daemon](https://github.com/samwhelp/tool-toggle-window-decoration/tree/master/explore/libwnck-3-dev/demo/start/daemon)
