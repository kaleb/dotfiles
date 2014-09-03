# rm ~/.bash_history
export HISTFILE=~/.cache/bash/history
if [[ $USER == codio ]]; then
	source ~/.config/bash/codio.bash
	fish && exit 0
fi
