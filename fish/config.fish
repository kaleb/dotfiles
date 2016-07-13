if status --is-login
	if functions -q export
		echo "export" | cat ~/.profile - | sh | .
	end
end

if [ $COLORTERM = gnome-terminal ]
	if [ $TERM = xterm ]
		if [ (tput -T gnome-256color colors 2>/dev/null) -eq 256 ]
			set -x TERM gnome-256color
		else if [ (tput -T xterm-256color colors 2>/dev/null) -eq 256 ]
			set -x TERM xterm-256color
		end
	end
end

if functions -q __fish_complete_django
	__fish_complete_django django-admin.py
	__fish_complete_django manage.py
	__fish_complete_django django-admin
end
