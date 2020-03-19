#!/bin/bash

# Backup Undo and Swap
mkdir -p ~/.vim/.backup
mkdir -p ~/.vim/.undo
mkdir -p ~/.vim/.swp
mkdir -p ~/.vim/autoload ~/.vim/bundle

# Pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Ale
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale

# Gruvbox
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox

# Airline
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes

# Nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Vim-Tmux
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/bundle/vim-tmux-navigator

# VimGo
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
