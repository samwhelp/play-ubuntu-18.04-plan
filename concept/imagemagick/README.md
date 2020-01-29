
# ImageMagick


## Link

* [ImageMagick](http://www.imagemagick.org)
* [ImageMagick version 6](https://legacy.imagemagick.org/)
* https://github.com/ImageMagick/ImageMagick6
* https://gitlab.com/ImageMagick/ImageMagick6


## Install

``` sh
$ sudo apt-get install imagemagick
```


## Concept Start

* https://imagemagick.org/script/formats.php#pseudo
* https://imagemagick.org/script/color.php#color_names
* https://imagemagick.org/script/command-line-processing.php
* https://imagemagick.org/script/command-line-tools.php

### im6

* https://legacy.imagemagick.org/script/command-line-processing.php
* https://legacy.imagemagick.org/script/command-line-tools.php


### Color

| Name | Color | RGB | Hex |
| --- | --- | --- | --- |
| none | none | rgba( 0, 0, 0, 0.0) | #00000000 |
| transparent | transparent | rgba( 0, 0, 0, 0.0) | #00000000 |
| white | white | rgb(255, 255, 255) | #FFFFFF |
| black | black | rgb( 0, 0, 0) | #000000 |
| red | red | rgb(255, 0, 0) | #FF0000 |
| green1 | green1 | rgb( 0, 255, 0) | #00FF00 |
| blue | blue | rgb( 0, 0, 255)  | #0000FF |


## Eamaple: create canvas image

| pseudo:color | Command |
| --- | --- |
| canvas: | $ `convert -size 800x600 canvas:none bg.png` |
| canvas:white | $ `convert -size 800x600 canvas:white bg.png` |
| canvas:#FFFFFF | $ `convert -size 800x600 canvas:#FFFFFF bg.png` |
| canvas:none | $ `convert -size 800x600 canvas:none bg.png` |
| canvas:transparent | $ `convert -size 800x600 canvas:transparent bg.png` |
| xc:none | $ `convert -size 800x600 xc:none bg.png` |


### command convert useage

* $ `convert input-file output-file`
* $ `convert [input-option] input-file [output-option] output-file`


### create canvas image

``` sh
$ convert -size 800x600 canvas:none bg.png
```

* [-size 800x600] : input-option
* [canvas:none] : input-file (pseudo-image)
* [bg.png] : output-file


### display image

``` sh
$ display bg.png
```


## Manpage

### im6

* $ man [convert](https://legacy.imagemagick.org/script/convert.php)
* $ man [display](https://legacy.imagemagick.org/script/display.php)
* $ man [composite](https://legacy.imagemagick.org/script/composite.php)
