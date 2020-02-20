
## Find Doc

run

```
$ man top | grep 'Batch\-mode' -A 4
```

show

```
       -b  :Batch-mode operation
            Starts  top in Batch mode, which could be useful for sending output from top to other programs or to a file.  In
            this mode, top will not accept input and runs until the iterations limit you've set with the  `-n'  command-line
            option or until killed.
```

## Example


* [awk-grep-top-batch-mode.sh](awk-grep-top-batch-mode.sh)
* [awk-grep-top.sh](awk-grep-top.sh)
* [grep-top-batch-mode.sh](grep-top-batch-mode.sh)
* [grep-top.sh](grep-top.sh)
