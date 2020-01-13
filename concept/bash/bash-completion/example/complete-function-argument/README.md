

## Install

``` sh
$ ./install.sh
```


## Remove

``` sh
$ ./remove.sh
```


## How to test

run

``` sh
source ~/.bashrc
```

then input

```
demo
```

then key [Tab]

show

```
{
$@: demo demo
$1: demo
$2:
$3: demo
}

```

then key 111
then key [Tab]

show

```
{
$@: demo 111 demo
$1: demo
$2: 111
$3: demo
}

```

then key 222
then key [Tab]

show

```
{
$@: demo 111222 demo
$1: demo
$2: 111222
$3: demo
}

```

then key [space]
then key 333
then key [Tab]

show

```
{
$@: demo 333 111222
$1: demo
$2: 333
$3: 111222
}

```

Then key [Ctrl + c] to end.
