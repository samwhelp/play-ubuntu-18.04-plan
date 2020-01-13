

## equivalent command

run

``` sh
man --help | grep equivalent
```

show

``` sh
  -f, --whatis               equivalent to whatis
  -k, --apropos              equivalent to apropos
```


run

``` sh
man man | grep 'man \-k printf' -A 3
```

show

```
man -k printf
	Search  the  short  descriptions  and  manual page names for the keyword printf as regular
	expression.  Print out any matches.  Equivalent to apropos printf.
```


run

``` sh
man man | grep 'man \-f smail' -A 3
```

show

```
man -f smail
	Lookup the manual pages referenced by smail and print out the short  descriptions  of  any
	found.  Equivalent to whatis smail.

```


## whatis

run

``` sh
whatis intro
```

or run

```
man -f intro
```

show

```
intro (7)            - introduction to overview and miscellany section
intro (6)            - introduction to games
intro (5)            - introduction to file formats and filesystems
intro (1)            - introduction to user commands
intro (4)            - introduction to special files
intro (3)            - introduction to library functions
intro (2)            - introduction to system calls
intro (8)            - introduction to administration and privileged commands
```

## apropos

run

``` sh
apropos intro
```

or run

```
man -k intro
```


## manpage form man-db

[run](http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/manual/how-to-find-out-manpages-by-a-package.html)

``` sh
dpkg -L man-db | grep '/man/man.*/'
```

show

```
/usr/share/man/man1/apropos.1.gz
/usr/share/man/man1/lexgrog.1.gz
/usr/share/man/man1/man.1.gz
/usr/share/man/man1/manconv.1.gz
/usr/share/man/man1/manpath.1.gz
/usr/share/man/man1/whatis.1.gz
/usr/share/man/man1/zsoelim.1.gz
/usr/share/man/man5/manpath.5.gz
/usr/share/man/man8/accessdb.8.gz
/usr/share/man/man8/catman.8.gz
/usr/share/man/man8/mandb.8.gz
```
