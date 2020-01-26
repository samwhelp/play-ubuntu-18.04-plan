
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
request::wallpaper
request::desktop_decoration
```

## Reference

* [https://awesomewm.org/apidoc/widgets/awful.widget.layoutbox.html](https://awesomewm.org/apidoc/widgets/awful.widget.layoutbox.html)
* [ https://github.com/awesomeWM/awesome/blob/master/themes/default/theme.lua#L105](https://github.com/awesomeWM/awesome/blob/master/themes/default/theme.lua#L105)
* [ https://github.com/awesomeWM/awesome/blob/master/themes/default/layouts/floatingw.png](https://github.com/awesomeWM/awesome/blob/master/themes/default/layouts/floatingw.png)
* [ https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/suit/floating.lua#L109](https://github.com/awesomeWM/awesome/blob/master/lib/awful/layout/suit/floating.lua#L109)
* [ https://github.com/awesomeWM/awesome/blob/master/lib/awful/widget/layoutbox.lua#L34](https://github.com/awesomeWM/awesome/blob/master/lib/awful/widget/layoutbox.lua#L34)