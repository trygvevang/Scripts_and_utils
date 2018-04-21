#! /bin/bash

# Disable the dashboard app
defaults write com.apple.dashboard mcx-disabled -boolean true
killall Dock

sleep 1

# Disable shadow on screenshots of window
defaults write com.apple.screencapture disable-shadow -bool true
killall SystemUIServer
