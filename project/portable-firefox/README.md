
# portable-firefox

## Usage


### Help

run

``` sh
$ ./pf-ctrl
```

or run

``` sh
$ ./pf-ctrl hel
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
	$ pf-ctrl install 'WorkWeb' '71.0' 'en-US'
	$ pf-ctrl install 'WorkWeb' '71.0' 'zh-TW'
	$ pf-ctrl remove

Debug:
	$ export DEBUG_PF_CTRL=true
```


### Install

run

``` sh
$ ./pf-ctrl install 'WorkWeb' '71.0' 'en-US'
```


## Link

* https://github.com/samwhelp/skel-project-plan/blob/gh-pages/demo/sh/standalone/bin/demo-ctrl
* https://github.com/samwhelp/play-ubuntu-18.04-plan/blob/master/project/portable-firefox/pf-ctrl