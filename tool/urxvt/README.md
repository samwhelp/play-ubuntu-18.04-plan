
## Font Setting

### size

```
!URxvt*font:                 	xft:Liberation Mono:style=Regular:size=14:antialias=true,xft:WenQuanYi Micro Hei Mono:style=Regular:size=14:antialias=true
URxvt*font:                 	xft:Liberation Mono:style=Regular:size=14:antialias=true,xft:Noto Sans Mono CJK TC:style=Regular:size=14:antialias=true
URxvt*imFont:               	xft:Liberation Mono:style=Regular:size=14:antialias=true,xft:Noto Sans Mono CJK TC:style=Regular:size=14:antialias=true
URxvt*boldFont:             	xft:Liberation Mono:style=Bold:size=14:antialias=true,xft:Noto Sans Mono CJK TC:style=Bold:size=14:antialias=true
```

### pixelsize

```
!URxvt*font:                 	xft:Liberation Mono:style=Regular:pixelsize=18:antialias=true,xft:WenQuanYi Micro Hei Mono:style=Regular:pixelsize=18:antialias=true
URxvt*font:                 	xft:Liberation Mono:style=Regular:pixelsize=18:antialias=true,xft:Noto Sans Mono CJK TC:style=Regular:pixelsize=18:antialias=true
URxvt*imFont:               	xft:Liberation Mono:style=Regular:pixelsize=18:antialias=true,xft:Noto Sans Mono CJK TC:style=Regular:pixelsize=18:antialias=true
URxvt*boldFont:             	xft:Liberation Mono:style=Bold:pixelsize=18:antialias=true,xft:Noto Sans Mono CJK TC:style=Bold:pixelsize=18:antialias=true
```


## Tips


* $ fc-match 'Liberation Mono'
* $ fc-match 'Liberation Mono:style=Regular:pixelsize=18'
* $ fc-match 'Noto Sans Mono CJK TC:style=Regular:pixelsize=18'
* $ fc-list | grep Noto | grep CJK | grep TC | grep Mono
