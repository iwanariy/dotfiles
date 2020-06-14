#!/bin/bash -xe

dotfiles_base="$(cd $(dirname "$0") && pwd)"

# git
git config --global user.name "$(cd "$dotfiles_base" && git log -1 --format=format:%an)"
git config --global user.email "$(cd "$dotfiles_base" && git log -1 --format=format:%ae)"
git config --global include.path "$dotfiles_base/.gitconfig"

# Install dotfiles
ln -snfv "$dotfiles_base/.zshrc" "$HOME/.zshrc"
ln -snfv "$dotfiles_base/.vimrc" "$HOME/.vimrc"

# vim
git clone https://github.com/Shougo/neobundle.vim "$HOME/.vim/bundle/neobundle.vim"
"$HOME/.vim/bundle/neobundle.vim/bin/neoinstall"
