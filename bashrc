# This file is meant to be sourced from my ~/.bashrc on whatever system.
# It should be sourced at the top, before anything else, so that I can
# make local customisations on any specific system later on in the
# .bashrc.

export PATH=~/bin:~/.nimble/bin:$PATH
export EDITOR=vim
export PS1="\u @ \[\e[36m\]\w\[\e[m\]\\n\[\e[36m\]-> \[\e[m\] "
export ERL_AFLAGS="-kernel shell_history enabled"

alias g=git
alias s="git status"
alias d="git diff"
alias l="git lol"
alias pf="git push --force-with-lease"

# Interpreters that don't have built-in readline support
alias poly="rlwrap poly" # PolyML
alias csi="rlwrap csi" # Chicken Scheme

# vim:set ft=sh:

