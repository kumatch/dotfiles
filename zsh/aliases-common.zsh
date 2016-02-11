# -*- mode: shell-script -*-

PAGER=less
export PAGER

### set alias
alias rr="rm -rf"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias ls="ls --show-control-char -aF --color=auto"
alias ll='ls -l'
alias la='ls -A'
#alias l='ls -CF'

alias sudo='sudo -E '
#alias less='lv'

alias g="git"


# その他ユーティリティ的な alias
alias clear_zshcompletion="rm -f ~/.zcompdump && rm ~/.zcompdump"
alias clear_dns="killall -HUP mDNSResponder"


## 追加 alias があれば
[ -f $DOTFILES/zsh/.zsh_aliases ] && source $DOTFILES/zsh/.zsh_aliases
