
## Example

* [example](example/slideshow)

## Help

$ man [feh](http://manpages.ubuntu.com/manpages/bionic/en/man1/feh.1.html)

run

``` sh
$ man feh | grep '^SYNOPSIS' -A 1
```

show

```
SYNOPSIS
     feh [options] [files | directories | URLs ...]
```

run

``` sh
$ man feh | grep 'slideshow-delay' -A 4
```

show

```
     -D, --slideshow-delay float
             For slideshow mode, wait float seconds between automatically changing slides.  Useful for presenta‐
             tions.  Specify a negative number to set the delay (which will then be float * (-1)), but start feh in
             paused mode.

--

```

run

``` sh
$ man feh | grep 'toggle_pause' -A 3
```

show

``` sh
h [toggle_pause]
		Pause/Continue the slideshow.  When it is paused, it will not automatically change slides based on
		--slideshow-delay.
```
