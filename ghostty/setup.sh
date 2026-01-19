#!/bin/bash

pushd $HOME

CONFIG_DIR="$HOME/.config/ghostty"
CONFIG_FILE="config"

mkdir -p $CONFIG_DIR
[ -L "$CONFIG_DIR/$CONFIG_FILE" ] && unlink $CONFIG_DIR/$CONFIG_FILE

ln -s $HOME/dotfiles/ghostty/$CONFIG_FILE $CONFIG_DIR/$CONFIG_FILE

popd
