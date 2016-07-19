function __fish_complete_update-alternatives_group \
	--description "Print master alternative link group names"
	update-alternatives --get-selections | awk '{
		printf "%s\tlink group\n", $1
	}'
end

complete --command update-alternatives \
	--no-files \
	--long-option verbose \
	--description 'Verbose operation, more output'

complete --command update-alternatives \
	--no-files \
	--arguments '--quiet' \
	--description 'Quiet operation, minimal output'

complete --command update-alternatives \
	--no-files \
	--arguments '--help' \
	--description 'Show help message'

complete --command update-alternatives \
	--no-files \
	--authoritative \
	--long-option 'get-selections' \
	--description 'List master alternative names and their status'

complete --command update-alternatives \
	--exclusive \
	--authoritative \
	--long-option version \
	--arguments '' \
	--description 'Show the version'

complete --command update-alternatives \
	--exclusive \
	--long-option display \
	--arguments '(__fish_complete_update-alternatives_group)' \
	--description 'Display information about the given link group'

#Usage: update-alternatives [<option> ...] <command>
#
#Commands:
#  --install <link> <name> <path> <priority>
#    [--slave <link> <name> <path>] ...
#                           add a group of alternatives to the system.
#  --remove <name> <path>   remove <path> from the <name> group alternative.
#  --remove-all <name>      remove <name> group from the alternatives system.
#  --auto <name>            switch the master link <name> to automatic mode.
#  --display <name>         display information about the <name> group.
#  --query <name>           machine parseable version of --display <name>.
#  --list <name>            display all targets of the <name> group.
#  --set-selections         read alternative status from standard input.
#  --config <name>          show alternatives for the <name> group and ask the
#                           user to select which one to use.
#  --set <name> <path>      set <path> as alternative for <name>.
#  --all                    call --config on all alternatives.
#
#<link> is the symlink pointing to /etc/alternatives/<name>.
#  (e.g. /usr/bin/pager)
#<name> is the master name for this link group.
#  (e.g. pager)
#<path> is the location of one of the alternative target files.
#  (e.g. /usr/bin/less)
#<priority> is an integer; options with higher numbers have higher priority in
#  automatic mode.
#
#Options:
#  --altdir <directory>     change the alternatives directory.
#  --admindir <directory>   change the administrative directory.
#  --log <file>             change the log file.
#  --force                  allow replacing files with alternative links.
#  --skip-auto              skip prompt for alternatives correctly configured
