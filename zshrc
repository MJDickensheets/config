# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/michael/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt Themes
autoload -Uz promptinit
promptinit
prompt fade magenta

# Shortcuts
alias vim=nvim

# Environment Variables
export EDITOR=nvim
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/.local/tools/microblaze/lin/bin/
export PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin/
export PATH=$PATH:/opt/Xilinx/Vitis/2020.1/bin/

# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
alias fzf=fzf --bind='ctrl-v:toggle-preview'
