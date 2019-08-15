# -*- mode: shell-script -*-

#######################################################
# nodebrew
#######################################################
if [[ -f $HOME/.nodebrew/nodebrew ]]; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

#######################################################
# phpbrew
#######################################################
if [[ -f $HOME/.phpbrew/bashrc ]]; then
    source $HOME/.phpbrew/bashrc
fi


#######################################################
# rbenv
#######################################################
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#######################################################
# go / golang
#######################################################
export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on

# for goenv
# GOPATHのコントロールをしてくれるな設定
export GOENV_DISABLE_GOPATH=1

#######################################################
# perl, cpanm
#######################################################
export PERL_LOCAL_LIB_ROOT="$HOME/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "$HOME/perl5"";
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5";
export PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB";
export PATH="$HOME/perl5/bin:$PATH";
