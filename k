#!/bin/sh -e
#
# - kubectl "alias"

if command -v kubecolor >/dev/null 2>&1; then
	kubecolor ${1+"$@"}
elif command -v kubectl >/dev/null 2>&1; then
	kubectl ${1+"$@"}
else
	exit 1
fi
