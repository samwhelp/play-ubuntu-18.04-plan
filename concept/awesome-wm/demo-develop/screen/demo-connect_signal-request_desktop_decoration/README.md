
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
request::desktop_decoration
```

## Reference

* [https://awesomewm.org/doc/api/classes/screen.html](https://awesomewm.org/doc/api/classes/screen.html)
* [https://awesomewm.org/doc/api/classes/screen.html#awful.screen.connect_for_each_screen](https://awesomewm.org/doc/api/classes/screen.html#awful.screen.connect_for_each_screen)
* [https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L123](https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L123)
