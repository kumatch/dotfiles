#!/bin/bash

pushd $HOME

CONFIG_FILE=".aerospace.toml"

[ -L "$CONFIG_FILE" ] && unlink $CONFIG_FILE

ln -s $HOME/dotfiles/aerospace/$CONFIG_FILE $CONFIG_FILE

popd
