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

# set MANPATH
manpath=(/usr/local/share/man(N-/) /usr/share/man(N-/))

