

## Manpage

$ man [bash](https://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#readline)

Search Keyword:

* [Completing]
* [Programmable Completion]
* [COMPREPLY]
* [-F function]

```
complete

	-F function
		The  shell  function function is executed in the current shell environment.
		When the function is executed, the first argument ($1) is the name  of  the
		command  whose  arguments  are being completed, the second argument ($2) is
		the word being completed, and the third argument ($3) is the word preceding
		the  word  being  completed on the current command line.  When it finishes,
		the possible completions are retrieved from  the  value  of  the  COMPREPLY
		array variable.
```


## Manual

* [8.4.6 Letting Readline Type For You](https://www.gnu.org/software/bash/manual/html_node/Commands-For-Completion.html#Commands-For-Completion)
* [8.6 Programmable Completion](https://www.gnu.org/software/bash/manual/html_node/index.html)
* [8.7 Programmable Completion Builtins](https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion-Builtins.html#Programmable-Completion-Builtins)
* [8.8 A Programmable Completion Example](https://www.gnu.org/software/bash/manual/html_node/A-Programmable-Completion-Example.html#A-Programmable-Completion-Example)


## Infopage

``` sh
sudo apt-get install bash-doc
```

``` sh
info bash -n 'Commands For Completion'
```

``` sh
info bash -n 'Programmable Completion'
```

``` sh
info bash -n 'Programmable Completion Builtins'
```

``` sh
info bash -n 'A Programmable Completion Example'
```


## bash-doc

``` sh
dpkg -L bash-doc | grep html
```

```
/usr/share/doc/bash/bash.html
/usr/share/doc/bash/bashref.html
/usr/share/doc/bash/examples/INDEX.html
/usr/share/doc/bash-doc/bash.html
/usr/share/doc/bash-doc/bashref.html
```

* /usr/share/doc/bash/bashref.html#Commands-For-Completion
* /usr/share/doc/bash/bashref.html#Programmable-Completion
* /usr/share/doc/bash/bashref.html#Programmable-Completion-Builtins
* /usr/share/doc/bash/bashref.html#A-Programmable-Completion-Example


## help

* help compgen
* helo complete
* helo compopt

> https://www.gnu.org/software/bash/manual/html_node/Programmable-Completion-Builtins.html#Programmable-Completion-Builtins


## simple example

### [lsusb](https://github.com/scop/bash-completion/blob/master/completions/lsusb)

``` sh
dpkg -L bash-completion | grep lsusb
```

```
/usr/share/bash-completion/completions/lsusb
```

```
less /usr/share/bash-completion/completions/lsusb
```

```
less $(dpkg -L bash-completion | grep lsusb)
```

## [hwclock](https://github.com/scop/bash-completion/blob/master/completions/_hwclock)

```
dpkg -L bash-completion | grep hwclock
```

```
/usr/share/bash-completion/completions/_hwclock
```

```
less /usr/share/bash-completion/completions/_hwclock
```

```
less $(dpkg -L bash-completion | grep hwclock)
```
