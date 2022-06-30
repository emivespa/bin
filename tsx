#!/bin/sh -e
#
# - ts (from moreutils) with the format it should use by default

# TZ=UTC ts '%Y-%m-%d_%H:%M:%.S'
ts '%H:%M:%.S'
