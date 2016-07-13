#!/bin/sh
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash(1)
if [ -n "$BASH_VERSION" ]; then
	. ${XDG_CONFIG_HOME:-$HOME/.config}/bash/login.bash
fi

#export ENV=${XDG_CONFIG_HOME:-$HOME/.config}/environ

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

export DOCKER_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"/docker
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}"/bash/history
export LESSHISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}"/less/history
export VIMINIT="source ${XDG_CONFIG_HOME:-$HOME/.config/vim/xdg.vim}"

# TODO: this needs an appropriate default
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"/tmux

mkdir -p $(dirname $HISTFILE)
mkdir -p $(dirname $LESSHISTFILE)
