#!/bin/bash

pushd $HOME

[ -L ".tmux.conf" ] && unlink .tmux.conf

ln -s $HOME/dotfiles/tmux/.tmux.conf .tmux.conf

popd
