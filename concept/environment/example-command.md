
## environment

* Xubuntu 18.04
* lightdm 1.26.0

## test command

* $ man [env](https://manpages.ubuntu.com/manpages/bionic/en/man1/env.1.html)
* $ man [printenv](https://manpages.ubuntu.com/manpages/bionic/en/man1/printenv.1.html)
* $ man [locale](https://manpages.ubuntu.com/manpages/bionic/en/man1/locale.1.html)

## my locale setting


run

``` sh
cat /etc/default/locale
```

show

```
LANG="zh_TW.UTF-8"
```

run

``` sh
locale
```

show

```
LANG=zh_TW.UTF-8
LANGUAGE=zh_TW:en
LC_CTYPE="zh_TW.UTF-8"
LC_NUMERIC=zh_TW.UTF-8
LC_TIME=zh_TW.UTF-8
LC_COLLATE="zh_TW.UTF-8"
LC_MONETARY=zh_TW.UTF-8
LC_MESSAGES="zh_TW.UTF-8"
LC_PAPER=zh_TW.UTF-8
LC_NAME=zh_TW.UTF-8
LC_ADDRESS=zh_TW.UTF-8
LC_TELEPHONE=zh_TW.UTF-8
LC_MEASUREMENT=zh_TW.UTF-8
LC_IDENTIFICATION=zh_TW.UTF-8
LC_ALL=
```

[more](locale.md)


## test start

### one

run

``` sh
LANG=C locale
```

show

```
LANG=C
LANGUAGE=zh_TW:en
LC_CTYPE="C"
LC_NUMERIC=zh_TW.UTF-8
LC_TIME=zh_TW.UTF-8
LC_COLLATE="C"
LC_MONETARY=zh_TW.UTF-8
LC_MESSAGES="C"
LC_PAPER=zh_TW.UTF-8
LC_NAME=zh_TW.UTF-8
LC_ADDRESS=zh_TW.UTF-8
LC_TELEPHONE=zh_TW.UTF-8
LC_MEASUREMENT=zh_TW.UTF-8
LC_IDENTIFICATION=zh_TW.UTF-8
LC_ALL=
```

run

``` sh
LC_ALL=C locale
```

show

```
LANG=zh_TW.UTF-8
LANGUAGE=zh_TW:en
LC_CTYPE="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=C
```

run

``` sh
LANGUAGE=C locale
```

show

```
LANG=zh_TW.UTF-8
LANGUAGE=C
LC_CTYPE="zh_TW.UTF-8"
LC_NUMERIC=zh_TW.UTF-8
LC_TIME=zh_TW.UTF-8
LC_COLLATE="zh_TW.UTF-8"
LC_MONETARY=zh_TW.UTF-8
LC_MESSAGES="zh_TW.UTF-8"
LC_PAPER=zh_TW.UTF-8
LC_NAME=zh_TW.UTF-8
LC_ADDRESS=zh_TW.UTF-8
LC_TELEPHONE=zh_TW.UTF-8
LC_MEASUREMENT=zh_TW.UTF-8
LC_IDENTIFICATION=zh_TW.UTF-8
LC_ALL=
```

### two


run

``` sh
LANG=C LC_ALL=C locale
```

show

```
LANG=C
LANGUAGE=zh_TW:en
LC_CTYPE="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=C
```

run

```
LANG=C LANGUAGE=C locale
```

show

```
LANG=C
LANGUAGE=C
LC_CTYPE="C"
LC_NUMERIC=zh_TW.UTF-8
LC_TIME=zh_TW.UTF-8
LC_COLLATE="C"
LC_MONETARY=zh_TW.UTF-8
LC_MESSAGES="C"
LC_PAPER=zh_TW.UTF-8
LC_NAME=zh_TW.UTF-8
LC_ADDRESS=zh_TW.UTF-8
LC_TELEPHONE=zh_TW.UTF-8
LC_MEASUREMENT=zh_TW.UTF-8
LC_IDENTIFICATION=zh_TW.UTF-8
LC_ALL=
```


### three

run

``` sh
LANG=C LANGUAGE=C LC_ALL=C locale
```

show

```
LANG=C
LANGUAGE=C
LC_CTYPE="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=C
```

## env --ignore-environment

$ man [env](https://manpages.ubuntu.com/manpages/bionic/en/man1/env.1.html)

run

``` sh
env --help
```

show

```
Usage: env [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]
Set each NAME to VALUE in the environment and run COMMAND.

Mandatory arguments to long options are mandatory for short options too.
  -i, --ignore-environment  start with an empty environment
  -0, --null           end each output line with NUL, not newline
  -u, --unset=NAME     remove variable from the environment
  -C, --chdir=DIR      change working directory to DIR
      --help     display this help and exit
      --version  output version information and exit

A mere - implies -i.  If no COMMAND, print the resulting environment.

GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
Report env translation bugs to <http://translationproject.org/team/>
Full documentation at: <http://www.gnu.org/software/coreutils/env>
or available locally via: info '(coreutils) env invocation'

```



## orginal

run

``` sh
locale
```

show

```
LANG=zh_TW.UTF-8
LANGUAGE=zh_TW:en
LC_CTYPE="zh_TW.UTF-8"
LC_NUMERIC=zh_TW.UTF-8
LC_TIME=zh_TW.UTF-8
LC_COLLATE="zh_TW.UTF-8"
LC_MONETARY=zh_TW.UTF-8
LC_MESSAGES="zh_TW.UTF-8"
LC_PAPER=zh_TW.UTF-8
LC_NAME=zh_TW.UTF-8
LC_ADDRESS=zh_TW.UTF-8
LC_TELEPHONE=zh_TW.UTF-8
LC_MEASUREMENT=zh_TW.UTF-8
LC_IDENTIFICATION=zh_TW.UTF-8
LC_ALL=
```

## ignore-environment

> [$ man env]
> -i, --ignore-environment
>		start with an empty environment
> A mere - implies -i.

> [$ env --help]
> -i, --ignore-environment  start with an empty environment
> A mere - implies -i.

### locale

run

``` sh
env -i locale
```

or run

```
env - locale
```

show

```
LANG=
LANGUAGE=
LC_CTYPE="POSIX"
LC_NUMERIC="POSIX"
LC_TIME="POSIX"
LC_COLLATE="POSIX"
LC_MONETARY="POSIX"
LC_MESSAGES="POSIX"
LC_PAPER="POSIX"
LC_NAME="POSIX"
LC_ADDRESS="POSIX"
LC_TELEPHONE="POSIX"
LC_MEASUREMENT="POSIX"
LC_IDENTIFICATION="POSIX"
LC_ALL=
```


run

``` sh
env -i LANG=C locale
```

or run

```
env - LANG=C locale
```

show

```
LANG=C
LANGUAGE=
LC_CTYPE="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=
```

run

``` sh
env -i LANG=C LANGUAGE=C locale
```

or run

```
env - LANG=C LANGUAGE=C locale
```

show

```
LANG=C
LANGUAGE=C
LC_CTYPE="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=
```

### env

run

``` sh
env - LANG=C env
```

show

```
LANG=C
```

run

``` sh
env - LANG=C LANGUAGE=C env
```

show

```
LANG=C
LANGUAGE=C
```

run

``` sh
env - LANG=C LANGUAGE=C LC_ALL=C env
```

show

```
LANG=C
LANGUAGE=C
LC_ALL=C
```

### printenv

run

``` sh
env - LANG=C printenv
```

show

```
LANG=C
```

run

``` sh
env - LANG=C LANGUAGE=C printenv
```

show

```
LANG=C
LANGUAGE=C
```

run

``` sh
env - LANG=C LANGUAGE=C LC_ALL=C printenv
```

show

```
LANG=C
LANGUAGE=C
LC_ALL=C
```
