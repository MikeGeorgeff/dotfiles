# Show sys info at load
neofetch

PATH="$HOME/.local/bin${PATH:+:${PATH}}"
EDITOR="nvim"
export TERM="xterm-256color"

# configure history
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# source aliases
source ~/.config/aliases.sh

# load plugins
source ~/.config/zsh/plugins/git/git.zsh
source ~/.config/zsh/plugins/autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh

# load theme
source ~/.config/zsh/themes/steeef.zsh-theme

setopt prompt_subst
