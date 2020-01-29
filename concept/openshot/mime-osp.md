

run

``` sh
$ dpkg -L openshot-qt | grep mime | grep xml
```

show

```
/usr/share/mime/packages/openshot-qt.xml
```


run

``` sh
$ cat /usr/share/mime/packages/openshot-qt.xml
```

or run

```
cat $(dpkg -L openshot-qt | grep mime | grep xml)
```

show

```
<?xml version="1.0"?>
<mime-info xmlns='http://www.freedesktop.org/standards/shared-mime-info'>
  <mime-type type="application/vnd.openshot-qt-project">
    <comment>OpenShot 2.0 project</comment>
    <glob pattern="*.osp"/>
    <icon name="openshot-qt"/>
  </mime-type>
</mime-info>
```


## View by jq

install Package: [jq](https://packages.ubuntu.com/bionic/jq)

run

``` sh
sudo apt-get install jq
```

then

1.Open openshot
2.Save Projet As demo.osp

then run

``` sh
$ jq '.' demo.osp
```

show

```
{
  "id": "T0",
  "fps": {
    "num": 24,
    "den": 1
  },
  "width": 1280,
  "height": 720,
  "sample_rate": 44100,
  "channels": 2,
  "channel_layout": 3,
  "settings": {},
  "clips": [],
  "effects": [],
  "export_path": "",
  "files": [],
  "duration": 300,
  "scale": 16,
  "tick_pixels": 100,
  "playhead_position": 0,
  "profile": "HDV 720 24p",
  "layers": [
    {
      "id": "L0",
      "label": "",
      "number": 0,
      "y": 0,
      "lock": false
    },
    {
      "id": "L1",
      "label": "",
      "number": 1,
      "y": 0,
      "lock": false
    },
    {
      "id": "L2",
      "label": "",
      "number": 2,
      "y": 0,
      "lock": false
    },
    {
      "id": "L3",
      "label": "",
      "number": 3,
      "y": 0,
      "lock": false
    },
    {
      "id": "L4",
      "label": "",
      "number": 4,
      "y": 0,
      "lock": false
    }
  ],
  "markers": [],
  "progress": [],
  "history": {
    "undo": [
      {
        "type": "load",
        "key": "",
        "value": {
          "id": "T0",
          "fps": {
            "num": 24,
            "den": 1
          },
          "width": 1280,
          "height": 720,
          "sample_rate": 44100,
          "channels": 2,
          "channel_layout": 3,
          "settings": {},
          "clips": [],
          "effects": [],
          "export_path": "",
          "files": [],
          "duration": 300,
          "scale": 16,
          "tick_pixels": 100,
          "playhead_position": 0,
          "profile": "HDV 720 24p",
          "layers": [
            {
              "id": "L0",
              "label": "",
              "number": 0,
              "y": 0,
              "lock": false
            },
            {
              "id": "L1",
              "label": "",
              "number": 1,
              "y": 0,
              "lock": false
            },
            {
              "id": "L2",
              "label": "",
              "number": 2,
              "y": 0,
              "lock": false
            },
            {
              "id": "L3",
              "label": "",
              "number": 3,
              "y": 0,
              "lock": false
            },
            {
              "id": "L4",
              "label": "",
              "number": 4,
              "y": 0,
              "lock": false
            }
          ],
          "markers": [],
          "progress": [],
          "history": {
            "undo": [],
            "redo": []
          },
          "version": {
            "openshot-qt": "0.0.0",
            "libopenshot": "0.0.0"
          }
        },
        "partial": false,
        "old_values": null
      }
    ],
    "redo": []
  },
  "version": {
    "openshot-qt": "2.4.1",
    "libopenshot": "0.1.9"
  }
}
```

## View by firefox

run

``` sh
cp demo.osp demo.osp.json
```

then run

``` sh
firefox demo.osp.json
```

## View by php

* https://www.php.net/manual/en/features.commandline.php
* https://www.php.net/manual/en/features.commandline.usage.php
* https://www.php.net/manual/en/function.json-decode.php

``` sh
$ sudo apt-get install php-cli php-json
```

``` sh
$ php -r 'var_dump(json_decode(file_get_contents("demo.osp"), true));'
```

## View by python

* https://docs.python.org/3/library/json.html
* https://docs.python.org/3/library/pprint.html


``` sh
$ python3 -c 'import json; print(json.loads(open("demo.osp").read()));'
```

``` sh
$ python3 -c 'import json; print(json.dumps(open("demo.osp").read()));'
```

``` sh
$ python3 -c 'import json; import pprint; pp = pprint.PrettyPrinter(indent=2); pp.pprint(json.loads(open("demo.osp").read()));'
```
