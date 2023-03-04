default: ;

.PHONY: shellcheck
shellcheck:
	find . -maxdepth 1 -type f | \
		while read -r file; do test -x $$file && shellcheck -f diff $$file; done

.PHONY: whatis
whatis:
	./whatisx *
