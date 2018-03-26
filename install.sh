#!/usr/bin/env bash

# Inspiration https://github.com/webpro/dotfiles/blob/master/install.sh

# Get current directory
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DOTFILES_DIR

# Symlinking

#ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

mkdir -p .config/i3
ln -sfv "$DOTFILES_DIR/i3/config" ~/.config/i3/config

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~/.vimrc
