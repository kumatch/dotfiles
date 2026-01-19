#!/bin/bash

pushd $HOME

CONFIG_DIR="$HOME/.config/ghostty"

mkdir -p $CONFIG_DIR
[ -L "$CONFIG_DIR/config" ] && unlink $CONFIG_DIR/config

ln -s $HOME/dotfiles/ghostty/config $CONFIG_DIR/config

popd
