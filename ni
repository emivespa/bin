#!/bin/sh
#
# - generate ni:/// code for given data
#
# https://posts.summerti.me/rfc-6920/

hex2bin() {
	# https://unix.stackexchange.com/questions/352569/converting-from-binary-to-hex-and-back#352570
	sed 's/\([0-9A-F]\{2\}\)/\\\\\\x\1/gI' | xargs printf
}

rfc6920 () {
    printf 'ni:///sha-256;'
    sha256sum -b | tr -cd '[:xdigit:]' | hex2bin | base64 | tr '/+' '_-' | tr -d =
}

${1:-rfc6920}
