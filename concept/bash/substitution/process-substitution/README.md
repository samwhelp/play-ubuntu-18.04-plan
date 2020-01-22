
## Doc

run

``` sh
$ man bash | grep 'Process Substitution' -A 10
```

show

```
   Process Substitution
       Process substitution allows a process's input or output to be referred to using a  filename.   It  takes  the
       form  of  <(list)  or  >(list).  The process list is run asynchronously, and its input or output appears as a
       filename.  This filename is passed as an argument to the current command as the result of the expansion.   If
       the  >(list) form is used, writing to the file will provide input for list.  If the <(list) form is used, the
       file passed as an argument should be read to obtain the output of list.  Process substitution is supported on
       systems that support named pipes (FIFOs) or the /dev/fd method of naming open files.

       When  available, process substitution is performed simultaneously with parameter and variable expansion, com‐
       mand substitution, and arithmetic expansion.
```

