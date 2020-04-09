#!/usr/bin/env bash
set -euxo pipefail

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install latest zsh
# https://stackoverflow.com/questions/17648621/how-do-i-update-zsh-to-the-latest-version
brew install --enable-etcdir zsh

# Install java8
echo "Installing java8"
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

# Install softwares
echo "Installing other softwares"
brew install \
    git \
    tig \
    node \
    hub \
    ansible \
    terraform \
    awscli \
    gpg \
    jq \
    the_silver_searcher \
    carthage

brew cask install \
    iterm2 \
    visual-studio-code \
    google-chrome \
    firefox spotify \
    flux \
    android-studio \
    appium discord \
    slack docker \
    skype whatsapp \
    zoomus postman \
    vlc \
    flycut

# Fira code
# https://github.com/tonsky/FiraCode/wiki/Installing
brew tap homebrew/cask-fonts &&\
brew cask install font-fira-code

# Iterm2 shell integration
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
compaudit | xargs chmod g-w,o-w # fix permissions warning
