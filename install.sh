#!/bin/bash -xe

dotfiles_base="$(cd $(dirname "$0") && pwd)"

# Install dotfiles
ln -snfv "$dotfiles_base/.zshrc" "$HOME/.zshrc"
ln -snfv "$dotfiles_base/.vimrc" "$HOME/.vimrc"
