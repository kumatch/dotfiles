# -*- mode: shell-script -*-

#######################################################
# rbenv
#######################################################
# readlineで怒られるのでビルドする際に使う
if [ `uname` = "Darwin" ]; then
  export RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline)"
fi

#######################################################
# rust
#######################################################
if [ -s $HOME/.cargo/env ] ; then source $HOME/.cargo/env ; fi

######################################################
# nodejs pnpm
######################################################
export PNPM_HOME="/Users/kumakura-yosuke/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

