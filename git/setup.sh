#!/bin/bash

pushd $HOME

[ -L ".gitconfig" ] && unlink .gitconfig
[ -L ".gitignore_commons" ] && unlink .gitignore_commons

ln -s $HOME/dotfiles/git/.gitconfig .gitconfig
ln -s $HOME/dotfiles/git/.gitignore_commons .gitignore_commons

popd
