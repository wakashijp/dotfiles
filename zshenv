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

