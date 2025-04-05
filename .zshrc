# -*- mode: shell-script -*-

# Emacs style key binding
bindkey -e

# coreのサイズ
limit coredumpsize 0
# unlimit stacksize for large aray in user mode
#ulimit -s unlimited

# 補完関数の利用
autoload -U compinit && compinit
zstyle ':completion:*:*:git:*' commands base

# 補完侯補をEmacsのキーバインドで動き回る
zstyle ':completion:*:default' menu select=1

# 補完の時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# 保管キーで順に補完候補を自動で補完
setopt auto_menu


# 範囲指定できるようにする
# 例 : mkdir foo{1-3} で foo1, foo2, foo3 を mkdir
setopt brace_ccl


# ビープ鳴らさない
setopt no_beep
setopt nolistbeep

# 補完候補などのリスト表示を詰める
setopt list_packed

# エスケープシーケンスを使う。
setopt prompt_subst

# メタ文字 (*, [, ], ?) をファイル名として扱わせない
setopt nonomatch

# 複数リダイレクトを可能にする (ex. echo "hello" > foo.txt > bar.txt)
setopt multios

# プロンプトのカラー表示を有効
autoload -U colors
colors



#
# cd に関する設定
#

# ディレクトリ名だけで移動できる。
setopt auto_cd
# cd で pushd する。
setopt auto_pushd
# pushdで同じディレクトリを重複してpushしない。
setopt pushd_ignore_dups
# pushd を引数無しで実行した時に pushd ~ とする。
setopt pushd_to_home

alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

function chpwd() {
#  ls -la
}
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
# zle -N cdup
# bindkey '\^' cdup


#
# 履歴の設定
#
HISTFILE=~/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000

# 履歴を表示させた際カーソルを行末にさせる
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

# # 履歴をインクリメンタル検索 (peco.zsh による peco-select-history を使っているのでコメントアウト)
# # bindkey '^R' history-incremental-pattern-search-backward
# # bindkey '^S' history-incremental-pattern-search-forward

# ^Iで補完可能な一覧を表示する。(曖昧補完)
setopt auto_list

# 先頭がスペースなら履歴に追加しない。
setopt hist_ignore_space
# 重複履歴は除く
setopt hist_ignore_dups
# 履歴に追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# 履歴の共有
setopt share_history

# 履歴ファイルに時刻を記録
setopt extended_history
# 履歴をインクリメンタルに追加
setopt inc_append_history

# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify

# 補完時にスペルチェックをする。
#setopt auto_correct

# 補完時にヒストリを自動的に展開する。
setopt hist_expand


# 全履歴の一覧を出力する
function history-all { history -E 1 }

###
# Set shell options
###
# setopt extended_history hist_ignore_dups hist_ignore_space prompt_subst
# setopt pushd_ignore_dups rm_star_silent sun_keyboard_hack
# setopt extended_glob list_types no_beep always_last_prompt
# setopt cdable_vars sh_word_split auto_param_keys


# C-s, C-qを無効にする。
setopt no_flow_control

# リダイレクトで上書きする事を許可しない。
setopt no_clobber

# ^Dでログアウトしないようにする。
setopt ignore_eof

# globを拡張する。
setopt extended_glob

# リターンを押す度にスペルチェックをする。
#setopt correct
#setopt correct_all

# rm * を実行する前に確認される。
setopt rmstar_wait

# カレントディレクトリ中にサブディレクトリが
# 見付からなかった場合に cd が検索する
# ディレクトリのリスト
cdpath=($HOME)

# バックグラウンドジョブが終了したらすぐに知らせる。
setopt no_tify



# zsh-completions を読み込み対象に追加。
# https://github.com/zsh-users/zsh-completions
fpath=($HOME/.zsh/zsh-completions $fpath)


# zsh cdr, add-zsh-hook を有効に
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
# cdr の設定
zstyle ':completion:*' recent-dirs-insert both
zstyle ':chpwd:*' recent-dirs-max 500
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-file "$HOME/.zsh-chpwd-recent-dirs"
zstyle ':chpwd:*' recent-dirs-pushd true


export DOTFILES=$HOME/dotfiles

# include

[ -f $DOTFILES/zsh/aliases-common.zsh ] && source $DOTFILES/zsh/aliases-common.zsh
[ -f $DOTFILES/zsh/common.zsh ] && source $DOTFILES/zsh/common.zsh
[ -f $DOTFILES/zsh/display_git_branch.zsh ] && source $DOTFILES/zsh/display_git_branch.zsh
[ -f $DOTFILES/zsh/peco.zsh ] && source $DOTFILES/zsh/peco.zsh

[ -f $DOTFILES/zsh/aws.zsh ] && source $DOTFILES/zsh/aws.zsh
[ -f $DOTFILES/zsh/docker.zsh ] && source $DOTFILES/zsh/docker.zsh
[ -f $DOTFILES/zsh/programing.zsh ] && source $DOTFILES/zsh/programing.zsh
[ -f $DOTFILES/zsh/http_status_codes.zsh ] && source $DOTFILES/zsh/http_status_codes.zsh

if [ `uname` = "Darwin" ]; then
  [ -f $DOTFILES/zsh/mac.zsh ] && source $DOTFILES/zsh/mac.zsh
elif [ `uname` = "Linux" ]; then
  [ -f $DOTFILES/zsh/linux.zsh ] && source $DOTFILES/zsh/linux.zsh
fi

# その他環境によって特別に追加されるもの
[ -f $DOTFILES/zsh/external.zsh ] && source $DOTFILES/zsh/external.zsh


# for file in bindkey prompt complete history screen alias individual_alias; do
#   [ -f ~/.zsh/$file.zsh ]; source ~/.zsh/$file.zsh
# done
if [ -s $HOME/.zsh_mine ] ; then source $HOME/.zsh_mine ; fi
