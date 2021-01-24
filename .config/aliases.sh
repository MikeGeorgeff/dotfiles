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

# python
alias python=python3

# clock
alias clock="tty-clock -c -C 3 -b -t"

# configs
alias zshrc="nvim ~/.zshrc"
alias aliases="nvim ~/.config/aliases.sh"
alias i3config="nvim ~/.config/i3/config"
alias i3blocksconfig="nvim ~/.config/i3blocks/config"
alias viminit="nvim ~/.SpaceVim.d/init.toml"

alias php-ide="docker run --rm -it -d --privileged -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/app -e DISPLAY=unix$DISPLAY --device /dev/dri --name php-ide --net="host" mikegeorgeff/vscode:php7.4"

# Config for dotfiles repo
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
