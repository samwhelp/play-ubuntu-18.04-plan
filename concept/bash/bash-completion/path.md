
## Path

### /etc/bash_completion.d

``` sh
grep 'bash_completion.d' /usr/share/bash-completion/bash_completion -n
```

```
2092:compat_dir=${BASH_COMPLETION_COMPAT_DIR:-/etc/bash_completion.d}
```

``` sh
dpkg -S /etc/bash_completion.d
```

```
grub-common, git, apport: /etc/bash_completion.d
```


### /usr/share/bash-completion/completions/

``` sh
find /usr/share/bash-completion/completions/
```

``` sh
ls /usr/share/bash-completion/completions/ -1
```


## bootstrap

run

``` sh
dpkg -L bash-completion | grep '^/etc'
```

show

```
/etc
/etc/bash_completion
/etc/profile.d
/etc/profile.d/bash_completion.sh
```

run

``` sh
$ dpkg -L bash-completion | grep bash_completion
```

show

```
/etc/bash_completion
/etc/profile.d/bash_completion.sh
/usr/share/bash-completion/bash_completion
/usr/share/perl5/Debian/Debhelper/Sequence/bash_completion.pm
/usr/share/doc/bash/README.md.bash_completion.gz
```

* /etc/profile
* /etc/profile.d/bash_completion.sh
* /etc/bash_completion
* /usr/share/bash-completion/bash_completion
