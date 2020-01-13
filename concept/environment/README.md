
## exmaple

* [example-command](example-command.md)
* [locale](locale.md)


## Simple Commands

run

``` sh
man sh | grep 'Simple Commands' -A 14
```

show

```
Simple Commands
  If a simple command has been recognized, the shell performs the following actions:

		1.   Leading words of the form “name=value” are stripped off and assigned to the environ‐
			 ment of the simple command.  Redirection operators and their arguments (as described
			 below) are stripped off and saved for processing.

		2.   The remaining words are expanded as described in the section called “Expansions”, and
			 the first remaining word is considered the command name and the command is located.
			 The remaining words are considered the arguments of the command.  If no command name
			 resulted, then the “name=value” variable assignments recognized in item 1 affect the
			 current shell.


		3.   Redirections are performed as described in the next section.

```

$ man [sh](https://manpages.ubuntu.com/manpages/bionic/en/man1/sh.1.html)


run

``` sh
man bash | grep '^ENVIRONMENT' -A 22
```

show

```
ENVIRONMENT
       When a program is invoked it is given an array of strings called the environment.  This  is  a
       list of name-value pairs, of the form name=value.

       The shell provides several ways to manipulate the environment.  On invocation, the shell scans
       its own environment and creates a parameter for each name found, automatically marking it  for
       export to child processes.  Executed commands inherit the environment.  The export and declare
       -x commands allow parameters and functions to be added to and deleted  from  the  environment.
       If  the value of a parameter in the environment is modified, the new value becomes part of the
       environment, replacing the old.  The environment inherited by any executed command consists of
       the  shell's  initial  environment,  whose values may be modified in the shell, less any pairs
       removed by the unset command, plus any additions via the export and declare -x commands.

       The environment for any simple command or function may be augmented temporarily  by  prefixing
       it  with parameter assignments, as described above in PARAMETERS.  These assignment statements
       affect only the environment seen by that command.

       If the -k option is set (see the set builtin command below), then  all  parameter  assignments
       are placed in the environment for a command, not just those that precede the command name.

       When  bash invokes an external command, the variable _ is set to the full filename of the com‐
       mand and passed to that command in its environment.

```

run

``` sh
man bash | grep '^COMMAND EXECUTION ENVIRONMENT' -A 62
```


$ sudo apt-get install bash-doc
$ info bash -n 'ENVIRONMENT'
$ info bash -n 'COMMAND EXECUTION ENVIRONMENT'


## File Path


* /etc/environment
* /etc/default/locale
* /etc/profle


## Manpage

``` sh
man -k env
```

* $ man [environ](https://manpages.ubuntu.com/manpages/bionic/en/man7/environ.7.html)
* $ man [environment.d](https://manpages.ubuntu.com/manpages/bionic/en/man5/environment.d.5.html)

* $ man [env](https://manpages.ubuntu.com/manpages/bionic/en/man1/env.1.html)
* $ man [printenv](https://manpages.ubuntu.com/manpages/bionic/en/man1/printenv.1.html)

* $ man [sh](https://manpages.ubuntu.com/manpages/bionic/en/man1/sh.1.html#environment)
* $ man [bash](https://manpages.ubuntu.com/manpages/bionic/en/man1/bash.1.html#environment)
