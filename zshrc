## Environment variable configuration
#
# Use Color mode
#
autoload -Uz colors
colors

## Default shell configuration
#
# Set prompt
#

# No beep sound when complete list displayed
#
setopt no_beep
setopt nolistbeep

## Keybind Configuration
#
# emacs like keybind
#
bindkey -e

# Historical backward/forward search with linehead string binded to ^P/^N
#
autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

## Command history Configuration
#
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt extended_history     #
setopt hist_ignore_dups     # ignore duplication command history list
setopt hist_ignore_space    # ignore start space command history list
setopt inc_append_history   #
setopt share_history        # share command history data
setopt no_flow_control

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

