function fish_title -d 'Set terminal title' #-a previous_command
	if set -q fish_title
		echo $fish_title
	else
		set current_command $_
		if [ $current_command = fish ]
			pwd
		#else if [ $previous_command = ' ' ]
		#	# previous_command is only in fish -V >= 2.2
		#	echo $previous_command
		else
			echo $current_command
		end
	end
end
