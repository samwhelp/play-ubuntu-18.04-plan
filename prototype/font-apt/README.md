

## Link

* https://packages.ubuntu.com/bionic/fonts/


## Search


``` sh
$ apt-cache pkgnames fonts- | sort
```


``` sh
$ apt-cache pkgnames ttf- | sort
```


``` sh
$ apt-cache dumpavail | grep '^Section: fonts$' -B 5
```


``` sh
$ apt-cache dumpavail | grep '^Section: fonts$' -B 5 | grep '^Package:'
```
