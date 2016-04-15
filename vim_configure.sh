#!/bin/sh
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim ~/.vim.bak

ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.vim ~/.vim
