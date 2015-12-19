# This file is meant to be sourced from my ~/.bashrc on whatever system.
# It should be sourced at the top, before anything else, so that I can
# make local customisations on any specific system later on in the
# .bashrc.

export PATH=$PATH:~/bin
export GUILE_LOAD_PATH=$GUILE_LOAD_PATH:~/guile
export EDITOR=vim

alias s='git status'
alias d='git diff'
alias l='git lol'

# vim:set ft=sh:

