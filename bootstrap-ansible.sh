#!/bin/sh

set -e

. /etc/lsb-release

if [ ! "$DISTRIB_ID" ]; then
	>&2 echo Cannot determine the distribution. Unable to proceed.
	exit 1
fi

case "$DISTRIB_ID" in
	Ubuntu)
		prompt="Enter password to install necessary packages: "
		sudo --bell --prompt "$prompt" apt install --yes git ansible
		;;
	*)
		>&2 echo Unsupported distribution: "$DISTRIB_ID"
		;;
esac

ansible-pull --version
