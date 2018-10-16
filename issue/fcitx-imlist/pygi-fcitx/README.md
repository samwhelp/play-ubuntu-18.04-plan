

## Issue

* https://github.com/samwhelp/play-ubuntu-18.04-plan/issues/1



## Api

* https://lazka.github.io/pgi-docs/index.html#Fcitx-1.0
* https://lazka.github.io/pgi-docs/index.html#Fcitx-1.0/classes/InputMethod.html#Fcitx.InputMethod.get_imlist
* https://lazka.github.io/pgi-docs/index.html#Fcitx-1.0/classes/InputMethod.html#Fcitx.InputMethod.set_imlist


## Prepare

install [gir1.2-fcitx-1.0](https://packages.ubuntu.com/bionic/gir1.2-fcitx-1.0)

``` sh
$ sudo apt-get install gir1.2-fcitx-1.0
```


## Usage


### help

``` sh
$ ./fcitx-imlist.py
```

or

``` sh
$ ./fcitx-imlist.py -h
```

or

``` sh
$ ./fcitx-imlist.py --help
```

show

```
usage: fcitx-imlist.py [-h] [-e im] [-d im] [-l ...]

Fcitx im list

optional arguments:
  -h, --help           show this help message and exit
  -e im, --enable im   Enable im
  -d im, --disable im  Disable im
  -l ..., --list ...   Display im list
```

### list

``` sh
$ ./fcitx-imlist.py -l
```

or

``` sh
$ ./fcitx-imlist.py --list
```

show

```
fcitx-keyboard-us : True
chewing : False
...
```

#### pager

``` sh
$ ./fcitx-imlist.py -l | less
```

or

``` sh
$ ./fcitx-imlist.py --list | less
```

#### grep

``` sh
$ ./fcitx-imlist.py -l | grep chewing
```

or

``` sh
$ ./fcitx-imlist.py --list | grep chewing
```

show

```
chewing : False
```

``` sh
$ ./fcitx-imlist.py -l | grep '^fcitx-keyboard-us :'
```

or

``` sh
$ ./fcitx-imlist.py --list | grep '^fcitx-keyboard-us :'
```

show

```
fcitx-keyboard-us : True
```

### enable im

``` sh
$ ./fcitx-imlist.py -e chewing
```

or

``` sh
$ ./fcitx-imlist.py --enable chewing
```

then

``` sh
$ ./fcitx-imlist.py -l | grep chewing
```

show

```
chewing : True
```

### disable im

``` sh
$ ./fcitx-imlist.py -d chewing
```

or

``` sh
$ ./fcitx-imlist.py --disable chewing
```

then

``` sh
$ ./fcitx-imlist.py -l | grep chewing
```

show

```
chewing : False
```

## check $HOME/.config/fcitx/profile

``` sh
$ grep '^EnabledIMList=' ~/.config/fcitx/profile
```

or

``` sh
$ grep '^EnabledIMList=' ~/.config/fcitx/profile | awk -F '=' '{print $2}'
```

or

``` sh
$ grep '^EnabledIMList=' ~/.config/fcitx/profile | cut -d= -f2
```

or

``` sh
$ grep '^EnabledIMList=' ~/.config/fcitx/profile | awk -F '=' '{print $2}' | sed 's/,/\n/g' | sort -u
```

or

``` sh
$ grep '^EnabledIMList=' ~/.config/fcitx/profile | awk -F '=' '{print $2}' | sed 's/,/\n/g' | sort -u | grep '^chewing:'
```
