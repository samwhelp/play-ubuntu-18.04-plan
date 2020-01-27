
## Prepare

### Install awesome

to install [Package: [build-essential](https://packages.ubuntu.com/bionic/build-essential)]

``` sh
sudo apt-get install build-essential
```

to install build-dep package for compile awesome.

``` sh
sudo apt build-dep awesome
```

to clone awesome from github

``` sh
git clone https://github.com/awesomeWM/awesome.git
```

to build

```
cd awesome
make
```

to build package

```
make package
```

to install deb (Ubuntu 18.04)

``` sh
sudo dpkg -i build/*.deb
```

to install xsession desktop entry

```sh
sudo install -m 644 /usr/local/share/xsessions/awesome.desktop /usr/share/xsessions/awesome.desktop
```

### Install xserver-xephyr

to install [Package: [xserver-xephyr](https://packages.ubuntu.com/bionic/xserver-xephyr)].

``` sh
sudo apt-get install xserver-xephyr
```

## Start Test

run

``` sh
bin/dev.sh
```

show

```
gears.filesystem.get_themes_dir() = /usr/local/share/awesome/themes/
gears.filesystem.get_configuration_dir() = ./
themes_dir_path = /usr/local/share/awesome/themes/
theme_default_dir_path = /usr/local/share/awesome/themes/default
request::wallpaper
request::desktop_decoration
table: 0x556f70b76c20
awful.layout.get().name : floating
awful.layout.getname() : floating

```

## Reference

* [https://awesomewm.org/apidoc/core_components/tag.html#request::default_layouts](https://awesomewm.org/apidoc/core_components/tag.html#request::default_layouts)
* [ https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L408](https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/init.lua#L408)
