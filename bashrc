# This file is meant to be sourced from my ~/.bashrc on whatever system.
# It should be sourced at the top, before anything else, so that I can
# make local customisations on any specific system later on in the
# .bashrc.

export PATH=~/bin:$PATH
export EDITOR=vim

alias g=git
alias s="git status"
alias d="git diff"
alias l="git lol"
alias pf="git push --force-with-lease"

# vim:set ft=sh:

