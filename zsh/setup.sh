#!/bin/bash

pushd $HOME

[ -L ".zshenv" ] && unlink .zshenv
[ -L ".zshrc" ] && unlink .zshrc

ln -s $HOME/dotfiles/zsh/.zshenv .zshenv
ln -s $HOME/dotfiles/zsh/.zshrc .zshrc

popd
