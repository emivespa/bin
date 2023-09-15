#!/bin/sh -e
#
# - kubectl "alias"

if type kubecolor >/dev/null 2>&1; then
	kubecolor ${1+"$@"}
elif type kubectl >/dev/null 2>&1; then
	kubectl ${1+"$@"}
else
	exit 1
fi
