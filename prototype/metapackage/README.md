
## Reference

* Ubuntu Community Help Wik / [MetaPackages](https://help.ubuntu.com/community/MetaPackages)
* Debian Wiki / [metapackage](https://wiki.debian.org/metapackage)

## Search


``` sh
$ apt-cache dumpavail | grep '^Section: metapackages' -B 5
```


``` sh
$ apt-cache dumpavail | grep '^Section: universe/metapackages' -B 5
```

``` sh
$ apt-cache dumpavail | grep '^Section: multiverse/metapackages' -B 5
```

``` sh
$ apt-cache dumpavail | grep '^Section: [[:alnum:]]*/metapackages' -B 5 | less
```

``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | less
```

``` sh
$ apt-cache dumpavail | egrep '^Section: metapackages|^Section: [[:alnum:]]*/metapackages' -B 5
```


``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | less
```


``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | grep '^Package:'
```

``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | grep '^Package:' | sort -u
```

``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | grep '^Package:' | sort -u | less
```

``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | grep '^Package:' | sort -u | awk -F ': ' '{print $2}'
```

## [metapackages.txt](metapackages.txt)

``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | grep '^Package:' | sort -u | awk -F ': ' '{print $2}' > metapackages.txt
```

## [metapackages.md](metapackages.md)

``` sh
$ apt-cache dumpavail | grep '^Section: metapackages\|^Section: [[:alnum:]]*/metapackages' -B 5 | grep '^Package:' | sort -u | awk -F ': ' '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $2, $2}' > metapackages.md
```
