
# Fcitx / Keybind


## Subject

* [Switch](#switch)


## Switch

| Key | Description |
| --- | --- |
| `Ctrl + Space` | 切換主要輸入法 |
| `Ctrl + Shift` | 切換各個輸入法 |


## Clipboard

| Key | Description |
| --- | --- |
| `Ctrl + ;` | 顯示剪貼簿 |


## Explore

run

``` sh
$ dpkg -L fcitx-modules | grep '\.desc'
```

show

```
/usr/share/fcitx/configdesc/fcitx-autoeng.desc
/usr/share/fcitx/configdesc/fcitx-chttrans.desc
/usr/share/fcitx/configdesc/fcitx-clipboard.desc
/usr/share/fcitx/configdesc/fcitx-imselector.desc
/usr/share/fcitx/configdesc/fcitx-keyboard.desc
/usr/share/fcitx/configdesc/fcitx-quickphrase.desc
/usr/share/fcitx/configdesc/fcitx-spell.desc
/usr/share/fcitx/configdesc/fcitx-unicode.desc
```

run

``` sh
$ dpkg -L fcitx-modules | grep '\.conf'
```

show

```
/usr/share/fcitx/addon/fcitx-autoeng.conf
/usr/share/fcitx/addon/fcitx-chttrans.conf
/usr/share/fcitx/addon/fcitx-clipboard.conf
/usr/share/fcitx/addon/fcitx-fullwidth-char.conf
/usr/share/fcitx/addon/fcitx-imselector.conf
/usr/share/fcitx/addon/fcitx-ipcportal.conf
/usr/share/fcitx/addon/fcitx-keyboard.conf
/usr/share/fcitx/addon/fcitx-punc.conf
/usr/share/fcitx/addon/fcitx-quickphrase.conf
/usr/share/fcitx/addon/fcitx-remote-module.conf
/usr/share/fcitx/addon/fcitx-spell.conf
/usr/share/fcitx/addon/fcitx-unicode.conf
```


### Explore / Clipboard

run

``` sh
$ grep 'Clipboard/TriggerKey' /usr/share/fcitx/configdesc/fcitx-clipboard.desc -A 4
```

show

```
[Clipboard/TriggerKey]
Type=Hotkey
DefaultValue=CTRL_;
Description=Trigger Key for Clipboard History List
```
