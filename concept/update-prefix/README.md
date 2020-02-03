
## Begining

* http://openbox.org/wiki/ObConf:About

```
update-mime-database /usr/share/mime
update-desktop-database /usr/share/applications
```

## Exploere

run

``` sh
$ dpkg -S update-mime-database
```

show

```
shared-mime-info: /usr/bin/update-mime-database
shared-mime-info: /usr/share/man/man1/update-mime-database.1.gz
```

run

``` sh
$ dpkg -S update-mime
```

show

```
mime-support: /usr/sbin/update-mime
mime-support: /usr/share/man/man8/update-mime.8.gz
shared-mime-info: /usr/bin/update-mime-database
shared-mime-info: /usr/share/man/man1/update-mime-database.1.gz
```

run

``` sh
$ dpkg -S update-desktop-database
```

show

```
desktop-file-utils: /usr/bin/update-desktop-database
desktop-file-utils: /usr/share/man/man1/update-desktop-database.1.gz
```

run

``` sh
$ dpkg -S 'update-' | grep 'bin' | sort
```

## gtk-update-icon-cache

run

``` sh
$ dpkg -S 'update-' | grep 'bin' | sort | grep gtk
```

show

```
gtk-update-icon-cache: /usr/bin/gtk-update-icon-cache
gtk-update-icon-cache: /usr/sbin/update-icon-caches
```

run

``` sh
$ dpkg -S gtk-update-icon-cache
```

show

```
gtk-update-icon-cache: /usr/share/doc/gtk-update-icon-cache/changelog.Debian.gz
libgtk-3-doc: /usr/share/doc/libgtk-3-doc/gtk3/gtk-update-icon-cache.html
gtk-update-icon-cache: /usr/bin/gtk-update-icon-cache
gtk-update-icon-cache: /usr/share/doc/gtk-update-icon-cache/AUTHORS
gtk-update-icon-cache: /usr/share/doc/gtk-update-icon-cache/copyright
gtk-update-icon-cache: /usr/share/man/man1/gtk-update-icon-cache.1.gz
gtk-update-icon-cache: /usr/share/doc/gtk-update-icon-cache
```

## fc-cache

``` sh
$ fc-cache -fv ~/.local/share/fonts/
```

``` sh
$ fc-cache -f -v ~/.local/share/fonts/
```

## glib-compile-schemas

run

``` sh
$ dpkg -S glib-compile-schemas
```

show

```
libglib2.0-doc: /usr/share/doc/libglib2.0-doc/gio/glib-compile-schemas.html
libglib2.0-0:amd64: /usr/lib/x86_64-linux-gnu/glib-2.0/glib-compile-schemas
libglib2.0-bin: /usr/share/man/man1/glib-compile-schemas.1.gz
libglib2.0-bin: /usr/bin/glib-compile-schemas
```

run

``` sh
$ dpkg -L libglib2.0-bin
```
show

```
/.
/usr
/usr/bin
/usr/bin/gapplication
/usr/bin/gdbus
/usr/bin/gio
/usr/bin/gresource
/usr/bin/gsettings
/usr/share
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/gapplication
/usr/share/bash-completion/completions/gdbus
/usr/share/bash-completion/completions/gresource
/usr/share/bash-completion/completions/gsettings
/usr/share/doc
/usr/share/doc/libglib2.0-bin
/usr/share/doc/libglib2.0-bin/copyright
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/gapplication.1.gz
/usr/share/man/man1/gdbus.1.gz
/usr/share/man/man1/gio-querymodules.1.gz
/usr/share/man/man1/gio.1.gz
/usr/share/man/man1/glib-compile-schemas.1.gz
/usr/share/man/man1/gresource.1.gz
/usr/share/man/man1/gsettings.1.gz
/usr/bin/gio-querymodules
/usr/bin/glib-compile-schemas
/usr/share/doc/libglib2.0-bin/changelog.Debian.gz
```


## update-alternatives

run

``` sh
$ dpkg -S update-alternatives
```

show

```
zsh-common: /usr/share/zsh/functions/Completion/Debian/_update-alternatives
dpkg: /usr/share/man/ja/man1/update-alternatives.1.gz
dpkg: /usr/share/man/it/man1/update-alternatives.1.gz
dpkg: /usr/share/man/man1/update-alternatives.1.gz
dpkg: /usr/bin/update-alternatives
dpkg: /usr/share/man/es/man1/update-alternatives.1.gz
dpkg: /usr/share/man/de/man1/update-alternatives.1.gz
dpkg: /usr/share/man/fr/man1/update-alternatives.1.gz
dpkg: /usr/share/man/pl/man1/update-alternatives.1.gz
dpkg: /usr/share/man/sv/man1/update-alternatives.1.gz
bash-completion: /usr/share/bash-completion/completions/update-alternatives
dpkg: /usr/share/polkit-1/actions/org.dpkg.pkexec.update-alternatives.policy
dpkg: /usr/share/man/nl/man1/update-alternatives.1.gz
```
