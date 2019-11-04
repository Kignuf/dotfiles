#!/usr/bin/env bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install softwares
brew install git tig bash-completion node hub java ansible terraform awscli &&\
brew cask install iterm2 vscode 1clipboard chrome firefox spotify flux dashlane android-studio appium discord slack docker

# Fira code
# https://github.com/tonsky/FiraCode/wiki/Installing
brew tap homebrew/cask-fonts &&\
brew cask install font-fira-code
