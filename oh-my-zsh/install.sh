#!/usr/bin/env bash
zsh_custom_dir="$HOME/dotfiles"/oh-my-zsh/ || exit;

function install_custom_zsh() {
    rsync --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "install.sh" \
        -avv "$zsh_custom_dir" ~/.oh-my-zsh/custom/
}

echo "Installing custom zsh features"
install_custom_zsh;

unset install_custom_zsh
