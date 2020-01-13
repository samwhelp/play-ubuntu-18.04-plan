

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
$cur:
$prev: demo
$words: demo
$cword: 1
}

```

then key 111
then key [Tab]

show

```
{
$cur:
$prev: 111
$words: demo
$cword: 2
}

```

then key 222
then key [Tab]

show

```
{
$cur: 222
$prev: 111
$words: demo
$cword: 2
}

```

then key [space]
then key 333
then key [Tab]

show

```
{
$cur: 333
$prev: 222
$words: demo
$cword: 3
}

```

Then key [Ctrl + c] to end.
