#!/usr/bin/env bash

#####################################################
#####  BASH_IT
#####################################################
# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline'

# Load Bash It
source $BASH_IT/bash_it.sh


#####################################################
##### SHOW/HIDE Hidden files in Finder.app 
#####################################################
# Show .files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide .files
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#####################################################
##### Simple Configs
#####################################################
alias ls='ls -G'
alias tmux='tmux -2'
