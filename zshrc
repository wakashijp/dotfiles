# Use Color mode
autoload -Uz colors
colors

# Keybind Configuration
## emacs keybind
bindkey -e

# History Configuration
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history
setopt no_flow_control

