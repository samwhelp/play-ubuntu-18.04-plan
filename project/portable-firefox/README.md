
# portable-firefox

## Usage


### Help

run

``` sh
$ ./pf-ctrl
```

or run

``` sh
$ ./pf-ctrl help
```

show

```
Usage:
	$ pf-ctrl [action]
	$ pf-ctrl install {target} {version} {language}

Example:

	$ pf-ctrl
	$ pf-ctrl help

	$ pf-ctrl list
	$ pf-ctrl last
	$ pf-ctrl install 'WorkWeb' '71.0' 'en-US'
	$ pf-ctrl install 'WorkWeb' '71.0' 'zh-TW'
	$ pf-ctrl remove

Debug:
	$ export DEBUG_PF_CTRL=true
```


### Find Firefox Release Version List

run

``` sh
$ ./pf-ctrl list | less
```


### Find Firefox Release Last Version

run

``` sh
$ ./pf-ctrl last
```

show

```
71.0
```


### Install

run

``` sh
$ ./pf-ctrl install 'WorkWeb' '71.0' 'en-US'
```


## Link

* https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/standalone/bin/demo-ctrl
* https://github.com/samwhelp/play-ubuntu-18.04-plan/blob/master/project/portable-firefox/pf-ctrl
* https://github.com/samwhelp/note-about-gcin/blob/gh-pages/ubuntu/18.04/tool/prototype/download-eliu-gcin-source/sh-wget-grep/download.sh
