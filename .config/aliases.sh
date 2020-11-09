#!/bin/bash

# shutdown/reboot
alias reboot="sudo reboot"
alias shutdown="sudo shutdown now"

# copy/paste
alias c="xclip -selection clipboard"
alias v="xclip -o"

# replace ls with exa
alias ls="exa -la --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"
alias lt="exa -aT --color=always --group-directories-first"

# vim
alias vim=nvim

# clock
alias clock="tty-clock -c -C 3 -b -t"

# configs
alias zshrc="nvim ~/.zshrc"
alias aliases="nvim ~/.config/aliases.sh"
alias i3config="nvim ~/.config/i3/config"
alias i3blocksconfig="nvim ~/.config/i3blocks/config"
alias viminit="nvim ~/.SpaceVim.d/init.toml"

# Config for dotfiles repo
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
