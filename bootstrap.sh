#!/usr/bin/env bash
# https://github.com/mathiasbynens/dotfiles

cd "$HOME/dotfiles" || exit;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		--exclude "install-softwares.sh" \
		-avv -p . ~;

	# shellcheck source=/dev/null
	# source ~/.zshrc;
	echo "Done, please manually source ~/.zshrc"
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1 -r;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;