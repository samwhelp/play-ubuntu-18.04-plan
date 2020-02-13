

run

``` sh
$ fc-list | grep Noto | grep CJK | grep TC | grep Mono
```

show

```
/usr/local/share/fonts/Noto/NotoSansMonoCJKtc-Bold.otf: Noto Sans Mono CJK TC,Noto Sans Mono CJK TC Bold:style=Bold,Regular
/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc: Noto Sans Mono CJK TC:style=Bold
/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc: Noto Sans Mono CJK TC:style=Regular
/usr/local/share/fonts/Noto/NotoSansMonoCJKtc-Regular.otf: Noto Sans Mono CJK TC,Noto Sans Mono CJK TC Regular:style=Regular
```


run

``` sh
$ fc-match 'Noto Sans Mono CJK TC:style=Bold:pixelsize=18:antialias=true'
```

show

```
NotoSansCJK-Bold.ttc: "Noto Sans Mono CJK TC" "Bold"
```
