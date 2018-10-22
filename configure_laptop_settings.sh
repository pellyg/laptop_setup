#!/bin/bash

# mac os x show dotfiles in finder
defaults write com.apple.finder AppleShowAllFiles YES


mkdir ~/screenshots
defaults write com.apple.screencapture location ~/screenshots

# allow you to install software downloaded without going to System Preferences each time
sudo spctl --master-disable

