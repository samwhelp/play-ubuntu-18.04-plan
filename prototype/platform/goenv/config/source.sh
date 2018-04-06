
### Head: goenv ################################################################
#
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
#
### Tail: goenv ################################################################


### Head: go workspace #########################################################
#
export GOPATH="$HOME/app/go/workspace/"
export PATH="$GOPATH/bin:$PATH"
#
### Tail: go workspace #########################################################
