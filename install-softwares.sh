#!/usr/bin/env bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install java8
echo "Installing java8"
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# Install softwares
echo "Installing other softwares"
brew install git tig bash-completion node hub ansible terraform awscli gpg jq the_silver_searcher &&\
brew cask install iterm2 vscode 1clipboard chrome firefox spotify flux dashlane android-studio appium discord slack docker

# Fira code
# https://github.com/tonsky/FiraCode/wiki/Installing
brew tap homebrew/cask-fonts &&\
brew cask install font-fira-code
