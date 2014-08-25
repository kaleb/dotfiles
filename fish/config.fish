if not set -q XDG_CONFIG_HOME
	set -xg XDG_CONFIG_HOME ~/.config
end
if not set -q XDG_CACHE_HOME
	set -xg XDG_CACHE_HOME ~/.cache
	mkdir -p $XDG_CACHE_HOME
end
if not set -q VIMINIT
	mkdir -p $XDG_CACHE_HOME/vim
	set -xg VIMINIT 'let $MYVIMRC="$XDG_CONFIG_HOME/vim/xdg.vim" | source $MYVIMRC'
end
if not set -q LESSHISTFILE
	# prevent less(1) from cluttering ~/ with ~/.lesshst file

	set less_cache_dir $XDG_CACHE_HOME/less
	mkdir -p $less_cache_dir
	set -xg LESSHISTFILE $less_cache_dir/history
end
