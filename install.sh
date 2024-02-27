#!/usr/bin/env bash

git clone https://github.com/gablg1/dotfiles.git ~/.dotfiles

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
