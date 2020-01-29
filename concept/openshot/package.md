
## Source Package: openshot-qt

* Source Package: [openshot-qt](https://packages.ubuntu.com/source/bionic/openshot-qt)

run

``` sh
$ apt-cache showsrc openshot
```


run

``` sh
$ apt-cache showsrc openshot | grep '^Binary:'
```

show

```
Binary: openshot-qt, openshot-qt-doc, openshot, openshot-doc
```


run

``` sh
$ apt-cache showsrc openshot | grep '^Binary:' -B 2
```

show

```
Package: openshot-qt
Format: 3.0 (quilt)
Binary: openshot-qt, openshot-qt-doc, openshot, openshot-doc
```

## Source Package: libopenshot

* Source Package: [libopenshot](https://packages.ubuntu.com/source/bionic/libopenshot)

run

``` sh
$ apt-cache showsrc python3-openshot
```


run

``` sh
$ apt-cache showsrc python3-openshot | grep '^Binary:'
```

show

```
Binary: libopenshot14, libopenshot-dev, libopenshot-doc, python3-openshot
```


run

``` sh
$ apt-cache showsrc python3-openshot | grep '^Binary:' -B 2
```

show

```
Package: libopenshot
Format: 3.0 (quilt)
Binary: libopenshot14, libopenshot-dev, libopenshot-doc, python3-openshot
```


## python3-openshot

run

``` sh
$ sudo apt-get install python3-openshot
```

run

``` sh
$ dpkg -L python3-openshot
```

show

```
/.
/usr
/usr/lib
/usr/lib/python3
/usr/lib/python3/dist-packages
/usr/lib/python3/dist-packages/_openshot.cpython-36m-x86_64-linux-gnu.so
/usr/lib/python3/dist-packages/openshot.py
/usr/share
/usr/share/doc
/usr/share/doc/python3-openshot
/usr/share/doc/python3-openshot/copyright
/usr/share/doc/python3-openshot/changelog.Debian.gz
```

run

``` sh
$ python3 -c 'import openshot; print(openshot);'
```

show

```
<module 'openshot' from '/usr/lib/python3/dist-packages/openshot.py'>
```

run

``` sh
$ python3 -c 'import openshot; print(dir(openshot));'
```

run

``` sh
$ python3 -c 'import openshot; print(help(openshot));'
```

run

``` sh
$ python3 -c 'import openshot; print(help(openshot.Timeline));'
```
