#!/bin/sh

repo_origin="git@github.com:kaleb/dotfiles"

# Get my dotfiles
if test -d ~/.config
then
	if test -d ~/.config/.git
	then
		echo '~/.config is already a git repository'
	else
		cd ~/.config
		git init
		git remote add origin $repo_origin
		git fetch
		git checkout -t origin/master
		git submodule update --init --recursive
	fi
else
	git clone $repo_origin ~/.config
	cd ~/.config
	git submodule update --init --recursive
fi

# Install a shell that makes sense
if ! which fish > /dev/null
then
	if [ $USER = codio ]
	then
		parts install fish
	fi
	fish -c "echo the fish of the sea will declare to you"
fi

# rm bash clutter
if ! test -h ~/.bash_profile
then
	mv ~/.bash_profile ~/.config/bash/profile-old.bash
	ln -s .config/bash/profile.bash ~/.bash_profile
fi
mkdir -p ~/.cache/bash
mv ~/.bash_history ~/.cache/bash/history

if [ $USER = codio ]
then
	rm ~/.gitconfig
	rm ~/.profile
	rm -r ~/.subversion
	rm ~/.curlrc
fi
