## Environment variable configuration
#

## Default shell configuration
#
# Set prompt
#
#########################################################################
# vcs_info formats
# man zshcontrib(1)
#########################################################################
#
# %s バージョン管理システム名(git,svn,hg,...)
# %b ブランチ情報
# %i リビジョン番号またはリビジョンID
# %r リポジトリ名
# %R リポジトリのルートディレクトリのパス
# %S リポジトリルートから見た今のディレクトリの相対パス
# %a アクション名(mergeなど)actionformatsのみで指定可
# %c stagedstr 文字列
# %u unstagedstr 文字列
# %m その他の情報
#
autoload -Uz colors; colors
autoload -Uz vcs_info
setopt prompt_subst

RPROMPT="%{[38;5;012m%}[%~]%{${reset_color}%}"
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagestr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

# auto change directory
#
setopt auto_cd

# auto directory pushd that you can get dirs list by cd -[tab]
#
setopt auto_pushd
setopt pushd_ignore_dups    # ignore duplication push directory

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
setopt no_flow_control      # no flow control ^S/^Q

## Completion configuration
#

#########################################################################
# compinit options
#########################################################################
#
# compinit -u: テストを避けて全ての発見したファイルを警告なしに使用する
# compinit -i: 全ての安全でないファイルとディレクトリを無視する
# compinit -C: セキュリティチェック全体をスキップする
#
autoload -Uz compinit
compinit -u

## Alias configuration
#
# expand aliases before completing
#
setopt complete_aliases # aliased ls needs if file/dir completions work

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias sudo='sudo ' # alias use sudo command

alias du='du -h'
alias df='df -h'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias gst='git status'
alias gcm='git commit -a'
alias gpl='git pull'
alias gps='git push origin master'
alias glg='git log'
alias gdf='git diff'

## Loading source files configuration
#
# Switch OSTYPE loading source file
#
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

# Loading secret source file
#
if [ -f "${HOME}/.zshrc.secret" ]; then
    source "${HOME}/.zshrc.secret"
fi

