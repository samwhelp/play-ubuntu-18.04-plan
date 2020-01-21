
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
request::desktop_decoration
beautiful.bg_normal = #FFFFFF
beautiful["bg_normal"] = #FFFFFF
```

## Reference

* [https://awesomewm.org/apidoc/sample%20files/theme.lua.html](https://awesomewm.org/apidoc/sample%20files/theme.lua.html)
* [https://awesomewm.org/apidoc/theme_related_libraries/beautiful.html#init](https://awesomewm.org/apidoc/theme_related_libraries/beautiful.html#init)
* [ https://awesomewm.org/apidoc/documentation/05-awesomerc.md.html#Variable_definitions](https://awesomewm.org/apidoc/documentation/05-awesomerc.md.html#Variable_definitions)
* [https://awesomewm.org/apidoc/documentation/06-appearance.md.html](https://awesomewm.org/apidoc/documentation/06-appearance.md.html)
* [https://awesomewm.org/doc/api/classes/wibox.html#beautiful.bg_normal](https://awesomewm.org/doc/api/classes/wibox.html#beautiful.bg_normal)
* [https://github.com/awesomeWM/awesome/blob/master/lib/wibox/init.lua#L88](https://github.com/awesomeWM/awesome/blob/master/lib/wibox/init.lua#L88)
* [https://github.com/awesomeWM/awesome/blob/v4.3/lib/wibox/init.lua#L76](https://github.com/awesomeWM/awesome/blob/v4.3/lib/wibox/init.lua#L76)
