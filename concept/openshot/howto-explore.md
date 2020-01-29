
## Install Package

``` sh
$ sudo apt-get install openshot openshot-doc
```

or

``` sh
$ sudo apt-get install openshot-qt openshot-qt-doc
```

## Explore - Timeline

run

``` sh
$ grep openshot.Timeline /usr/lib/python3/dist-packages/openshot_qt/ -R
```

show

```
/usr/lib/python3/dist-packages/openshot_qt/classes/timeline.py:54:        # Create an instance of a libopenshot Timeline object
/usr/lib/python3/dist-packages/openshot_qt/classes/timeline.py:55:        self.timeline = openshot.Timeline(width, height, openshot.Fraction(fps["num"], fps["den"]), sample_rate, channels,
/usr/lib/python3/dist-packages/openshot_qt/windows/export.py:111:        # Create new "export" openshot.Timeline object
/usr/lib/python3/dist-packages/openshot_qt/windows/export.py:112:        self.timeline = openshot.Timeline(width, height, openshot.Fraction(fps.num, fps.den),
/usr/lib/python3/dist-packages/openshot_qt/windows/cutting.py:108:        # Create an instance of a libopenshot Timeline object
/usr/lib/python3/dist-packages/openshot_qt/windows/cutting.py:109:        self.r = openshot.Timeline(self.width, self.height, openshot.Fraction(self.fps_num, self.fps_den), self.sample_rate, self.channels, self.channel_layout)
/usr/lib/python3/dist-packages/openshot_qt/windows/preview_thread.py:242:            # Create an instance of a libopenshot Timeline object
/usr/lib/python3/dist-packages/openshot_qt/windows/preview_thread.py:243:            self.clip_reader = openshot.Timeline(width, height, openshot.Fraction(fps["num"], fps["den"]), sample_rate, channels, channel_layout)
```

## Download Package

run to download

``` sh
$ apt-get download openshot-qt
```

run to extract

``` sh
$ dpkg -x openshot-qt_2.4.1-2build2_all.deb openshot-qt
```

run

``` sh
$ grep openshot.Timeline openshot-qt -R
```

show

```
grep: openshot-qt/usr/lib/python3/dist-packages/openshot_qt/timeline/media/js/jquery.js: No such file or directory
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/classes/timeline.py:        # Create an instance of a libopenshot Timeline object
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/classes/timeline.py:        self.timeline = openshot.Timeline(width, height, openshot.Fraction(fps["num"], fps["den"]), sample_rate, channels,
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/windows/export.py:        # Create new "export" openshot.Timeline object
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/windows/export.py:        self.timeline = openshot.Timeline(width, height, openshot.Fraction(fps.num, fps.den),
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/windows/cutting.py:        # Create an instance of a libopenshot Timeline object
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/windows/cutting.py:        self.r = openshot.Timeline(self.width, self.height, openshot.Fraction(self.fps_num, self.fps_den), self.sample_rate, self.channels, self.channel_layout)
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/windows/preview_thread.py:            # Create an instance of a libopenshot Timeline object
openshot-qt/usr/lib/python3/dist-packages/openshot_qt/windows/preview_thread.py:            self.clip_reader = openshot.Timeline(width, height, openshot.Fraction(fps["num"], fps["den"]), sample_rate, channels, channel_layout)
```
