#!/bin/bash

# Backup Undo and Swap
mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.undo
mkdir -p ~/.vim/.swp
mkdir -p ~/.vim/autoload ~/.vim/bundle

# Pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Ale
git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale

# Colorschemes
git clone https://github.com/flazz/vim-colorshemes.git ~/.vim/bundle/colorschemes

# Lightline
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim

# Nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Vim-Tmux
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/bundle/vim-tmux-navigator
