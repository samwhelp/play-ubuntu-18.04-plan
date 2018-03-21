
## Reference

* Ubuntu Community Help Wik / [MetaPackages](https://help.ubuntu.com/community/MetaPackages)


## Forum

* https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=359438#forumpost359438


## Search


### [restricted-extras](restricted-extras.md)

``` sh
$ apt-cache showsrc ubuntu-restricted-extras | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u
```

``` sh
$ apt-cache showsrc ubuntu-restricted-extras | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}'
```

``` sh
$ apt-cache showsrc ubuntu-restricted-extras | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort -u | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}' > restricted-extras.md
```


### [restricted-addons](restricted-addons.md)

``` sh
$ apt-cache showsrc ubuntu-restricted-addons | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort
```

``` sh
$ apt-cache showsrc ubuntu-restricted-addons | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}'
```

``` sh
$ apt-cache showsrc ubuntu-restricted-addons | grep '^Binary:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | sort | awk '{printf "* [%s](https://packages.ubuntu.com/bionic/%s)\n", $1, $1}' > restricted-addons.md
```
