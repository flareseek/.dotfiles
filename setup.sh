#!/bin/bash
DOTFILES_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
HOME_DIR=$HOME

echo "Setting up dotfiles..."

ln -sf $DOTFILES_DIR/tmux/.tmux.conf $HOME/
ln -sf $DOTFILES_DIR/wezterm/.wezterm.lua $HOME/

echo "Done"
