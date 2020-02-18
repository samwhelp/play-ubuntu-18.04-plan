
# lf (terminal file manager)

## Link

* [lf (list file)](https://github.com/gokcehan/lf) 
* [wiki](https://github.com/gokcehan/lf/wiki)

 
## Install

browse [https://github.com/gokcehan/lf/releases](https://github.com/gokcehan/lf/releases) 

find [lf-linux-amd64.tar.gz](https://github.com/gokcehan/lf/releases/download/r13/lf-linux-amd64.tar.gz)

then run


``` sh
$ wget -c 'https://github.com/gokcehan/lf/releases/download/r13/lf-linux-amd64.tar.gz'
```

extract

``` sh
$ tar xf lf-linux-amd64.tar.gz
```

prepare ~/bin
 
``` sh
$ mkdir -p ~/bin
```

install

``` sh
$ install -m 755 lf ~/bin/
```

## Option

edit ~/.config/lf/lfrc


``` 
set icons
set drawbox
```

## Integration

### vim

* [lf.vim](https://github.com/ptzz/lf.vim)

#### Implementation

* [hvim](https://github.com/samwhelp/tool-hvim)
* [lvim](https://github.com/samwhelp/tool-lvim)
* [mvim](https://github.com/samwhelp/tool-mvim)

On vim or nvim

| key squence |
| --- |
| `, + f` |
| `Space + e + l' |
