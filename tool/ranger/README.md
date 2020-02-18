
# ranger


## Link

* [ranger](https://ranger.github.io/) ([GitHub](https://github.com/ranger/ranger))


## Install

### ranger

run to install (Package: [ranger](https://packages.ubuntu.com/bionic/ranger))

``` sh
$ sudo apt-get install ranger
```

### w3m-img

run to install (Package: [w3m-img](https://packages.ubuntu.com/bionic/w3m-img))

``` sh
$ sudo apt-get install w3m-img
```

## Config

### Copy Config

run to copy all

``` sh
$ ranger --copy-config=all
```

or run to copy rc (only ~/.config/ranger/rc.conf).

``` sh
$ ranger --copy-config=rc
```

## Howto

### Preview Image

edit ~/.config/ranger/rc.conf

let

```
set preview_images true
set preview_images_method w3m
set preview_files true
```

> install w3m-img first.

Please run ranger on

* [xterm](https://packages.ubuntu.com/bionic/xterm)
* [urxvt](https://packages.ubuntu.com/bionic/rxvt-unicode)
* [st](https://st.suckless.org/) ([stterm](https://packages.ubuntu.com/bionic/stterm))


### VCS Aware

edit ~/.config/ranger/rc.conf

let

```
set vcs_aware true 
```

## Integration

### vim

* [ranger.vim](https://github.com/francoiscabrol/ranger.vim)

#### Implementation

* [hvim](https://github.com/samwhelp/tool-hvim)
* [lvim](https://github.com/samwhelp/tool-lvim)
* [mvim](https://github.com/samwhelp/tool-mvim)

| key |
| --- |
| `Space + er' |
