# ~/.bash_login

# include .bashrc if it exists
bash_config_file=${XDG_CONFIG_HOME:-$HOME/.config}/bash/bashrc
if [ -f "$bash_config_file" ]; then
	. "$bash_config_file"
fi
unset bash_config_file
