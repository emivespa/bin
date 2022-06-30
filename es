#!/bin/sh -e
#
# - general purpose text alignment utility
#
# Kinda like 'column -t' but it allows for spaces in cells. This is achieved by
# using a simple convention: single spaces separate words but 2 or more spaces
# separate cells (ignoring indent).
#
# You can override the default cell separation function by specifying your own
# separator with the ES_SEPARATOR env var. Multiple characters are treated as
# multiple single-character separators.
#
# Originally 'es' stood for Elastic Spaces because it emulates Elastic Tabstops
# -style alignment but with spaces.
# http://nickgravgaard.com/elastic-tabstops/

separator=''
# HACK: using U+E000 as the default separator (https://en.wikipedia.org/wiki/Private_Use_Areas).
#	You input these in vim with control-v, capital U, the codepoint, return.
# TODO: use record separator?
#	https://ronaldduncan.wordpress.com/2009/10/31/text-file-formats-ascii-delimited-text-not-csv-or-tab-delimited-text/

separate_cells() {
	if test -n "${ES_SEPARATOR}"
	then
		cat -
	else
		sed -E "s/([^[:blank:]]+)( ){2,}/\1${separator}/g"
	fi
}

separate_cells |
	column -o'  ' -t -s"${ES_SEPARATOR:-${separator}}" |
	sed 's/ *$//' # Remove trailing spaces left by column.
