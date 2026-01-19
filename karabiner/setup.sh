#!/bin/bash

pushd $HOME

CONFIG_DIR="$HOME/.config/karabiner"
CONFIG_FILE="karabiner.json"

mkdir -p $CONFIG_DIR
[ -L "$CONFIG_DIR/$CONFIG_FILE" ] && unlink $CONFIG_DIR/$CONFIG_FILE

ln -s $HOME/dotfiles/karabiner/$CONFIG_FILE $CONFIG_DIR/$CONFIG_FILE

popd
