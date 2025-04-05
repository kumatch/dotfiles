# -*- mode: shell-script -*-

# dircolors
# [ -f $DOTFILES/misc/.dircolors ] && dircolors $DOTFILES/misc/.dircolors


# less
#   -i : 大文字がない限り ignore-case で検索する
#   -g : 検索文字のハイライトをカーソル位置のみにする
#   -M : 自分が見てる行数やそのパーセンテージなどを表示
#   -R : Output "raw" control characters.
#   -q : quiet terminal bell
#   -c : clear screen
export LESS='-igMRqc'


######################################################################
# アーカイブ展開
######################################################################
function extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
	  *.tar.xz)    tar xvJf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x $1     ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *.lzma)      lzma -dv $1    ;;
          *.xz)        xz -dv $1      ;;  
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

alias ext='extract'


######################################################################
# z
# https://github.com/rupa/z
######################################################################
#`brew --prefix`/etc/profile.d/z.sh

######################################################################
# zsh-syntax-highlighting (install from homebrew)
######################################################################
if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi


#######################################################
# asdf
#######################################################
export ASDF_DATA_DIR=$HOME/.asdf
export PATH="$ASDF_DATA_DIR/shims:$PATH"

fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

# その他必要な変数を定義
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

######################################################################
# direnv
# https://github.com/direnv/direnv
######################################################################
[[ -x $(which direnv) ]] && eval "$(direnv hook zsh)"
