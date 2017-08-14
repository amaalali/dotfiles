#!/bin/sh

# This script will sets up the dotfiles

ln -nfs ./.bash_profile ~/.bash_profile
ln -nfs ./.gitconfig ~/.gitconfig
ln -nfs ./.tmux.conf ~/.tmux.conf
ln -nfs ./.vimrc ~/.vimrc
# ln -nfs ./vim/ ~/.vim
