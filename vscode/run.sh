#!/usr/bin/env bash
cd "$HOME/dotfiles"/vscode || exit;

function updateRepo() {
    rsync --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "workspaceStorage" \
		--exclude "globalStorage" \
        -avv ~/Library/Application\ Support/Code/User/ .
}

function updateVscode() {
    rsync --exclude "run.sh" \
        --exclude ".DS_Store" \
		--exclude ".osx" \
		-avv . ~/Library/Application\ Support/Code/User/
}

if [ "$1" == "--install" ] || [ "$1" == "-i" ]; then
	read -p "This may overwrite existing files in your vscode directory. Are you sure? (y/n) " -n 1 -r;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
	    updateVscode;
	fi;
else
    echo "Updating repo with latest modification in vscode folder. Don't forget to review changes, commit and push them."
    updateRepo;
fi

unset updateRepo
unset updateVscode
