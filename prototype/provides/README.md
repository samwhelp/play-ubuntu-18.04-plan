
## Search


``` sh
$ apt-cache dumpavail | grep '^Provides:'
```


``` sh
$ apt-cache dumpavail | grep '^Provides:' | sort -u
```


``` sh
$ apt-cache dumpavail | grep '^Provides:' | awk -F ': ' '{print $2}' | sort -u
```


```sh
$ apt-cache dumpavail | grep '^Provides:' | awk -F ': ' '{print $2}' | sort -u | grep '^x-'
```
