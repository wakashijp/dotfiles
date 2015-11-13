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

# Not register a duplicate path
typeset -U path cdpath fpath manpath

# Set PATH
path=(/usr/local/bin(N-/) /usr/bin(N-/) /bin(N-/) /usr/sbin(N-/) /sbin(N-/))

# pyenv Configuration
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi

# HomeBrew: brew doctor warning measures
if [ -f "/usr/local/bin/pyenv" ]; then
    alias brew="env PATH=${PATH/\/Users\/m\/\.pyenv\/shims:/} brew"
fi

# Use gnu-sed settings. for mac homebrew:gnu-sed
if [ -f `which gsed` ]; then
    ## Add "gnubin" path
    path=(/usr/local/opt/gnu-sed/libexec/gnubin(N-/) $path)
    ## Add "gnuman" path
    manpath=(/usr/local/opt/gnu-sed/libexec/gnuman(N-/) $manpath)
fi

