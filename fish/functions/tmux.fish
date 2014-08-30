function tmux
	if not which tmux > /dev/null
		if [ $USER = codio ]
			parts install tmux
		end
	end
	command tmux -f $XDG_CONFIG_HOME/tmux/config $argv
end
