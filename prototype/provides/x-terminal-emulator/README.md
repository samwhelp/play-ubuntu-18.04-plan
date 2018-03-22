
## Reference

* Ubuntu Community Help Wik / [MetaPackages](https://help.ubuntu.com/community/MetaPackages)


## Search


### [x-terminal-emulator](x-terminal-emulator.md)

``` sh
$ apt-cache dumpavail | grep '^Provides: x-terminal-emulator' -B 11
```

``` sh
$ apt-cache dumpavail | grep '^Provides: x-terminal-emulator' -B 11 | grep '^Package:'
```

``` sh
$ apt-cache dumpavail | grep '^Provides: x-terminal-emulator' -B 11 | grep '^Package:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u
```

``` sh
$ apt-cache dumpavail | grep '^Provides: x-terminal-emulator' -B 11 | grep '^Package:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}'
```

``` sh
$ apt-cache dumpavail | grep '^Provides: x-terminal-emulator' -B 11 | grep '^Package:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}' > x-terminal-emulator.md
```
