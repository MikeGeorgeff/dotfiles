#!/bin/bash

alias reboot="sudo /sbin/reboot"
alias halt="sudo /sbin/halt"
alias poweroff="sudo /sbin/poweroff"
alias shutdown="sudo /sbin/shutdown"

alias vi="nvim"
alias vim="nvim"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias rm="rm -i"

alias ls="eza -la --group-directories-first"
alias la="eza -a --group-directories-first"
alias li="eza -l --group-directories-first"
alias lt="eza -aT --group-directories-first"

alias tree="tree -C --dirsfirst"

alias cat="batcat"
alias pcat="batcat -p"

alias grep="grep --color=auto"
alias rgrep="rgrep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias top="htop"
alias df='df -h'
alias du='du -h'
alias free='free -h'

alias python="python3"
alias pip="pip3"

alias pubkey="ssh-keygen -f $HOME/.ssh/id_ed25519 -y"
