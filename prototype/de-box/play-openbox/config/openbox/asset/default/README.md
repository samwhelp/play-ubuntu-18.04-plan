
## Default Config File

run

``` sh
$ dpkg -L openbox | grep xml
```

show

```
/etc/xdg/openbox/menu.xml
/etc/xdg/openbox/rc.xml
/usr/share/doc/openbox/rc-mouse-focus.xml.gz
```

copy

``` sh
cp /etc/xdg/openbox/menu.xml .
cp /etc/xdg/openbox/rc.xml .
```

## /etc/xdg/openbox/

run

``` sh
$ ls /etc/xdg/openbox/ -1
```

show

```
autostart
environment
lxqt-rc.xml
menu.xml
rc.xml
```
