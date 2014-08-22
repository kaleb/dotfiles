if not set -q XDG_CONFIG_HOME
	set -xg XDG_CONFIG_HOME ~/.config
end
if not set -q XDG_CACHE_HOME
	set -xg XDG_CACHE_HOME ~/.cache
end
if not set -q VIMINIT
	set -xg VIMINIT 'let $MYVIMRC="$XDG_CONFIG_HOME/vim/xdg.vim" | source $MYVIMRC'
end
