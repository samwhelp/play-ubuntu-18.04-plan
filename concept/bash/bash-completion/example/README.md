

## Example

* [bootstrap](bootstrap)
* [start](start)
* [complete-function-argument](complete-function-argument)
* [compreply-000](compreply-000)
* [compreply-001](compreply-001)
* [compreply-002](compreply-002)
* [complete-function-init-completion](complete-function-init-completion)
* [compreply-list-by-compgen](compreply-list-by-compgen)


## Case

* [style-switch-xfce](../../../../../project/style-tool/xfce/style-switch/completion/bash/style-switch-xfce)
* [style-ctrl-xfce](../../../../../project/style-tool/xfce/style-ctrl/completion/bash/style-ctrl-xfce)


## compgen

run

``` sh
$ compgen -W 'all all_get_default all_set_default'
```

show

```
all
all_get_default
all_set_default
```

run

``` sh
$ compgen -W 'all all_get_default all_set_default' a
```

show

```
all
all_get_default
all_set_default
```

run

``` sh
$ compgen -W 'all all_get_default all_set_default' all
```

show

```
all
all_get_default
all_set_default
```


run

``` sh
$ compgen -W 'all all_get_default all_set_default' all_
```

show

```
all_get_default
all_set_default
```

run

``` sh
$ compgen -W 'all all_get_default all_set_default' all_g
```

show

```
all_get_default
```
