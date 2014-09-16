#!/bin/bash

if ! type avconv >/dev/null; then
	echo "pls install libav-tools"
	exit 1
fi

if (( $# != 2 )); then
	echo "usage: $0 mp4filename mp3filename"
	exit 1
fi

from="$1"
to="$2"

if [[ ! $from =~ .*.mp4$ ]]; then
	echo "$from is not .mp4"
	exit 1
fi


if [[ ! $to =~ .*.mp3$ ]]; then
	echo "$to is not .mp3"
	exit 1
fi

set -xv
avconv -i "$from" -vn -f mp3 "$to"
set +xv

