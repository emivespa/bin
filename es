#!/bin/sh -e
#
# - "elastic spaces", general purpose text alignment utility
#
# Kinda like 'column -t' but it allows for spaces in cells. This is achieved by
# using a simple convention: single spaces separate words but 2 or more spaces
# separate cells (ignoring indent).

fs=''
# HACK: using U+E000 as the default fs (https://en.wikipedia.org/wiki/Private_Use_Areas).
#	You input these in vim with control-v, capital U, the codepoint, return.
# TODO: use record separator?
#	https://ronaldduncan.wordpress.com/2009/10/31/text-file-formats-ascii-delimited-text-not-csv-or-tab-delimited-text/

sed -E "s/([^[:blank:]]+)( ){2,}/\1${fs}/g" |
	column -o'  ' -t -s"${ES_FS:-${fs}}" |
	sed 's/ *$//' # Remove trailing spaces left by column.
