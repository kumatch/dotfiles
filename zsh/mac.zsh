# -*- mode: shell-script -*-

# COPY
alias pbp="pbpaste"
function pb() {
  if [ -t 0 ]; then
    cat $1 | pbcopy
  else
    pbcopy < /dev/stdin
  fi
}

##
## coreutils
##

# alias base64=gbase64
# alias basename=gbasename
# alias cat=gcat
# alias chgrp=gchgrp
# alias chmod=gchmod
alias chown=gchown
# alias chroot=gchroot
# alias cksum=gcksum
# alias comm=gcomm
# alias cp=gcp
# alias csplit=gcsplit
# alias cut=gcut
# alias date=gdate
# alias dd=gdd
# alias df=gdf
# alias dir=gdir
alias dircolors=gdircolors
# alias dirname=gdirname
# alias du=gdu
# alias echo=gecho
# alias env=genv
# alias expand=gexpand
# alias expr=gexpr
# alias factor=gfactor
# alias false=gfalse
# alias fmt=gfmt
# alias fold=gfold
# alias groups=ggroups
# alias head=ghead
# alias hostid=ghostid
# alias hostname=ghostname
# alias id=gid
# alias install=ginstall
# alias join=gjoin
# alias kill=gkill
# alias link=glink
# alias ln=gln
# alias logname=glogname
alias ls='gls --show-control-char -aF --color=auto'
# alias md5sum=gmd5sum
# alias mkdir=gmkdir
# alias mkfifo=gmkfifo
# alias mknod=gmknod
# alias mv=gmv
# alias nice=gnice
# alias nl=gnl
# alias nohup=gnohup
# alias od=god
# alias paste=gpaste
# alias pathchk=gpathchk
# alias pinky=gpinky
# alias pr=gpr
# alias printenv=gprintenv
# alias printf=gprintf
# alias ptx=gptx
# alias pwd=gpwd
alias readlink=greadlink
# alias rm=grm
# alias rmdir=grmdir
# alias seq=gseq
# alias sha1sum=gsha1sum
# alias sha224sum=gsha224sum
# alias sha256sum=gsha256sum
# alias sha384sum=gsha384sum
# alias sha512sum=gsha512sum
# alias shred=gshred
# alias shuf=gshuf
# alias sleep=gsleep
# alias sort=gsort
# alias split=gsplit
# alias stat=gstat
# alias stty=gstty
# alias su=gsu
# alias sum=gsum
# alias sync=gsync
# alias tac=gtac
# alias tail=gtail
# alias tee=gtee
# alias test=gtest
# alias touch=gtouch
# alias tr=gtr
# alias true=gtrue
# alias tsort=gtsort
# alias tty=gtty
# alias uname=guname
# alias unexpand=gunexpand
# alias uniq=guniq
# alias unlink=gunlink
# alias uptime=guptime
# alias users=gusers
# alias vdir=gvdir
# alias wc=gwc
# alias who=gwho
# alias whoami=gwhoami
# alias yes=gyes

##
## OSX alias
##

alias pwd="pwd | tee >(pbcopy)"
alias chrome="open -a Google\ Chrome"

#######################################################
# Rancher desktop
#######################################################
export PATH="/Users/kumakura-yosuke/.rd/bin:$PATH"

#######################################################
# grep
#######################################################
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"

#######################################################
# homebrew / cask
#######################################################
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH="/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"

#######################################################
# MacTex
#######################################################
export PATH="$PATH:/usr/texbin"
