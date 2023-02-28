#!/bin/sh -e
#
# - "one-liners", search my shell snippets file

opts=
if command grep --version >/dev/null 2>&1; then
	opts='--color=auto'
fi

grep $opts "$*" "${HOME:-~}/src/oneliners.sh"
