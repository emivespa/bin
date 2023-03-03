#!/bin/sh -e
#
# - "one-liners", search my shell snippets file

opts=
if command grep --version >/dev/null 2>&1; then
	opts='--color=auto'
fi

grep -v '^#' "${HOME:-~}/src/oneliners.sh" | # Ignore comments.
	grep $opts "$*.*#" | # Select lines with $* before the #.
	grep $opts '#.*' # Only color comment.

