# -*- mode: shell-script -*-

alias g="git"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# github
# github cli
[[ -x $(which direnv) ]] && eval "$(gh completion -s zsh)"
