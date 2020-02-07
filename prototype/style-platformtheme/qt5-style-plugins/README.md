
# Prototype howto use qt5-style-plugins


## Package

* [qt5-style-plugins](https://packages.ubuntu.com/bionic/qt5-style-plugins)

## Set Environment

```
export QT_QPA_PLATFORMTHEME=gtk2
```

## Config File

* [/etc/X11/Xsession.d/99platformtheme](config/platformtheme/99platformtheme)

## Config Reference

* Package: [xubuntu-default-settings](https://packages.ubuntu.com/bionic/xubuntu-default-settings) -  [/etc/X11/Xsession.d/56xubuntu-session](https://packages.ubuntu.com/bionic/all/xubuntu-default-settings/filelist)


## Theme

``` sh
$ find /usr/share/themes -name 'gtk-2.0'
```

``` sh
$ find ~/.local/share/themes -name 'gtk-2.0'
```

``` sh
$ find ~/.themes -name 'gtk-2.0'
```

## Usage

### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
