
## test

## 001

run

``` sh
$ make
```

show

```
echo '/usr'
/usr
```

## 002

run

``` sh
$ make install
```

show

```
echo '/usr'
/usr
```

## 003

run (pass by Enviroment)

``` sh
$ PREFIX=.local make install
```

show

```
echo .local
.local
```

## 004


run (pass by Argument)

``` sh
$ make install PREFIX=.local
```

show

```
echo .local
.local
```
