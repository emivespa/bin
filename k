#!/bin/sh -e
#
# - kubectl "alias"

if command -v kubecolor >/dev/null 2>&1; then
	kubecolor ${1+"$@"}
else
	kubectl ${1+"$@"}
fi
