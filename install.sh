#!/bin/bash

DOT_FILES_DIR="$PWD/dotfiles"

# Zsh config
ln -s "$DOT_FILES_DIR/.zprofile" ~/.zprofile
ln -s "$DOT_FILES_DIR/.zshrc" ~/.zshrc
# Starship config
ln -s "$DOT_FILES_DIR/.config/starship.toml" ~/.config/starship.toml
