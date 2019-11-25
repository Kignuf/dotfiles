#!/usr/bin/env bash

for file in ~/.{path,git-prompt,bash_exports,bash_secret_exports,aliases,bash_local}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Gcloud
# source /Users/kevin.roulleau/.opt/google-cloud-sdk/completion.bash.inc
# source /Users/kevin.roulleau/.opt/google-cloud-sdk/path.bash.inc
# CLOUDSDK_PYTHON=$(which python)

# Git bash completions
# https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  . "$(brew --prefix)/etc/bash_completion"

  # Add git completion to aliases
  __git_complete tig __git_main
  __git_complete gch _git_checkout
fi

# https://stackoverflow.com/questions/42554337/cannot-launch-avd-in-emulatorqt-library-not-found#42581852
function emulator { cd "$(dirname "$(which emulator)")" && ./emulator "$@"; }

# load ssh agent and add ssh keys
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

# Iterm2 shell integration
# https://iterm2.com/documentation-shell-integration.html
source ~/.iterm2_shell_integration.bash
