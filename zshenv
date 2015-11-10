# LANGUAGE set by en_US
export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

# Editor
export EDITOR=vim
export CVSEDITOR="${EDITOR}"
export SVN_EDITOR="${EDITOR}"
export GIT_EDITOR="${EDITOR}"

# Set PATH
typeset -U path
path=(/usr/local/bin(N-/) /usr/bin(N-/) /bin(N-/) /usr/sbin(N-/) /sbin(N-/))

# pyenv Configuration
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    path=(${PYENV_ROOT}/bin $path)
    eval "$(pyenv init -)"
fi

# HomeBrew: brew doctor warning measures
if [ -f "/usr/local/bin/pyenv" ]; then
    alias brew="env PATH=${PATH/\/Users\/m\/\.pyenv\/shims:/} brew"
fi

