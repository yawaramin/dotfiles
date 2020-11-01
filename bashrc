# This file is meant to be sourced from my ~/.bashrc on whatever system.
# It should be sourced at the top, before anything else, so that I can
# make local customisations on any specific system later on in the
# .bashrc.

export PATH=~/bin:~/.nimble/bin:$PATH
export EDITOR=vim
export PS1="\u @ \[\e[36m\]\w\[\e[m\]\\n\[\e[36m\]-> \[\e[m\] "
export ERL_AFLAGS="-kernel shell_history enabled"
export LEDGER='ledger -f ~/Dropbox/ledger/2019-08-01.dat'

alias g=git
alias s="git status"
alias d="git diff"
alias l="git lol"
alias pf="git push --force-with-lease"

# Interpreters that don't have built-in readline support
alias poly="rlwrap poly" # PolyML
alias csi="rlwrap csi" # Chicken Scheme

ocs () {
  esy b echo '\n' | ocamlmerlin single search-by-polarity -position 0 -query $1 | jq --raw-output '.value.entries[] | "\(.name) : \(.desc)"' | less
}

bal() {
  if [ -z "$1" ]; then
    $LEDGER balance --current
  else
    $LEDGER register --date-format %F --sort date --dc $1
  fi
}

alias si='bal Simplii_chequing'

# vim:set ft=sh:

