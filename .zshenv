# -*- mode: shell-script -*-

if [ "$TERM" = "dumb" ]
then
   unsetopt zle
fi

umask 022

# Path Setting
path=(~/bin /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin)

#export CFLAGS="-g"

export LD_LIBRARY_PATH="$HOME/local/lib:/usr/local/lib:/usr/lib:$LD_LIBRARY_PATH"

# Change directory color when type 'ls --color'. See man dircolors.
export LS_COLORS='di=01;37;40:'
export EDITOR="vim"
export SVN_EDITOR="vim"

export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export TZ=JST-9

# export TERMCAP=/etc/termcap
export TERMINFO=/usr/share/terminfo
export TERM=xterm
