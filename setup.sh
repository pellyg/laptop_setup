#!/bin/bash

# install git aliases
./install_git.sh

# install homebrew
./install_homebrew.sh

./install_etc.sh

./diff_so_fancy.sh

cp ./aliases ~/.aliases
echo source ~/.aliases 

defaults write com.apple.finder AppleShowAllFiles 1 && killall Finder
