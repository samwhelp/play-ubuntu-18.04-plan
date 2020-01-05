
# Prototype howto install theme-sephia and theme-honda-super-cub


## Prepare

* [prototype/de-basic/play-xfce](../../../de-basic/play-xfce)
* [prototype/style-platformtheme/qt5-style-plugins](../../../style-platformtheme/qt5-style-plugins)


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


## Notice

Fix File: ~/.config/gtk-3.0/settings.ini

```
[Settings]
gtk-application-prefer-dark-theme=0
```
