## Environment variable configuration
#

## Default shell configuration
#
# Set prompt
#
autoload -Uz colors; colors
autoload -Uz vcs_info
setopt prompt_subst

RPROMPT="%{[38;5;012m%}[%~]%${reset_color}%}"
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagestr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

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
setopt extended_history     # comannd history timestamp added to command history list
setopt hist_ignore_dups     # ignore duplication command history list
setopt hist_ignore_space    # ignore start space command history list
setopt inc_append_history   # new history lines are added to command history list incrementally
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

