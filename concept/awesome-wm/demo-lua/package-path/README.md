
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
Old package.path = /usr/local/share/lua/5.3/?.lua;/usr/local/share/lua/5.3/?/init.lua;/usr/local/lib/lua/5.3/?.lua;/usr/local/lib/lua/5.3/?/init.lua;/usr/share/lua/5.3/?.lua;/usr/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua;/home/demo/.config/awesome/?.lua;/home/demo/.config/awesome/?/init.lua;/etc/xdg/xdg-awesome-github/awesome/?.lua;/etc/xdg/xdg-awesome-github/awesome/?/init.lua;/etc/xdg/awesome/?.lua;/etc/xdg/awesome/?/init.lua;/usr/local/share/awesome/lib/?.lua;/usr/local/share/awesome/lib/?/init.lua
New package.path = ./vendor/?.lua;./vendor/?/init.lua;/usr/local/share/lua/5.3/?.lua;/usr/local/share/lua/5.3/?/init.lua;/usr/local/lib/lua/5.3/?.lua;/usr/local/lib/lua/5.3/?/init.lua;/usr/share/lua/5.3/?.lua;/usr/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua;/home/demo/.config/awesome/?.lua;/home/demo/.config/awesome/?/init.lua;/etc/xdg/xdg-awesome-github/awesome/?.lua;/etc/xdg/xdg-awesome-github/awesome/?/init.lua;/etc/xdg/awesome/?.lua;/etc/xdg/awesome/?/init.lua;/usr/local/share/awesome/lib/?.lua;/usr/local/share/awesome/lib/?/init.lua
module my
module me
```

## Reference

* [https://www.lua.org/manual/5.3/manual.html#6.3](https://www.lua.org/manual/5.3/manual.html#6.3)
* [https://www.lua.org/manual/5.3/manual.html#pdf-require](https://www.lua.org/manual/5.3/manual.html#pdf-require)
* [https://www.lua.org/manual/5.3/manual.html#pdf-package.path](https://www.lua.org/manual/5.3/manual.html#pdf-package.path)
* [https://www.runoob.com/lua/lua-modules-packages.html](https://www.runoob.com/lua/lua-modules-packages.html)
