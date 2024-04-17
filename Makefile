.PHONY: default
default: ;

.PHONY: deps
deps:
	git grep 'type *.*|| *exit' | sed 's/:/ /' | awk '{ print $$3 }' | sort -u

.PHONY: shellcheck
shellcheck:
	find . -maxdepth 1 -type f | \
		while read -r file; do test -x $$file && shellcheck -f diff $$file 2>/dev/null; done

.PHONY: whatis
whatis:
	./whatisx *

.PHONY: emoji
emoji:
	EMOJI_GET_VER=14 emoji
