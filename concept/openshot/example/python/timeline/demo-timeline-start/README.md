
## Prepare

``` sh
$ sudo apt-get install python3-openshot
```

## Test

run

``` sh
$ ./__main__.py
```

or run

``` sh
$ python3 ./__main__.py
```

or run

``` sh
cd ..
python3 demo-timeline-start
```

## Reference

* Package: [openshot-qt](https://packages.ubuntu.com/bionic/openshot-qt) /usr/lib/python3/dist-packages/openshot_qt/classes/timeline.py

run

```
$ grep 'openshot.Timeline(' /usr/lib/python3/dist-packages/openshot_qt/classes/timeline.py -B 15 -A 12
```

show

```
def __init__(self, window):
	self.app = get_app()
	self.window = window
	project = self.app.project
	s = settings.get_settings()

	# Get some settings from the project
	fps = project.get(["fps"])
	width = project.get(["width"])
	height = project.get(["height"])
	sample_rate = project.get(["sample_rate"])
	channels = project.get(["channels"])
	channel_layout = project.get(["channel_layout"])

	# Create an instance of a libopenshot Timeline object
	self.timeline = openshot.Timeline(width, height, openshot.Fraction(fps["num"], fps["den"]), sample_rate, channels,
									  channel_layout)
	self.timeline.info.channel_layout = channel_layout
	self.timeline.info.has_audio = True
	self.timeline.info.has_video = True
	self.timeline.info.video_length = 99999
	self.timeline.info.duration = 999.99
	self.timeline.info.sample_rate = sample_rate
	self.timeline.info.channels = channels

	# Open the timeline reader
	self.timeline.Open()

```

* Package: [openshot-qt](https://packages.ubuntu.com/bionic/libopenshot-doc) /usr/share/doc/libopenshot-doc/html/index.html
* Package: [openshot-qt](https://packages.ubuntu.com/bionic/libopenshot-doc) /usr/share/doc/libopenshot-doc/html/classopenshot_1_1Timeline.html

run

``` sh
$ dpkg -L libopenshot-doc | grep index.html
```

show

```
/usr/share/doc/libopenshot-doc/html/index.html
```

view

``` sh
$ firefox /usr/share/doc/libopenshot-doc/html/index.html
```

or

```
firefox $(dpkg -L libopenshot-doc | grep index.html)
```

## View Help

run

``` sh
$ python3 -c 'import openshot; print(help(openshot.Timeline));'
```
