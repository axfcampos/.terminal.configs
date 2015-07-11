#!/usr/bin/env bash
source ~/.profile

#####################################################
#####  BASH_IT
#####################################################
# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='minimal'

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
alias ls='ls -G -h'
alias tmux='tmux -2'

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/axfcampos/devp/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/axfcampos/devp/android-ndk-r10
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/axfcampos/devp/android-sdk-macosx
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/libexec/bin
export PATH=$ANT_ROOT:$PATH

# Node env
export NODE_ENV='development'

# Go env
export GOPATH=~/devp/gospace
export PATH=$PATH:$GOPATH/bin

# GIT
export EDITOR=vim
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

######
#### Ruby stuff
######
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

###### Rabbitmq-server
PATH=$PATH:/usr/local/sbin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
