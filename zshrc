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

# Use history-search-end
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# Beep settings
setopt no_beep
setopt nolistbeep

# Switch loading source files
case ${OSTYPE} in
    darwin*)
        if [ -f "${HOME}/.zshrc.darwin" ]; then
            source "${HOME}/.zshrc.darwin"
        fi
        ;;
    linux*)
        if [ -f "${HOME}/.zshrc.linux" ]; then
            source "${HOME}/.zshrc.linux"
        fi
        ;;
esac

