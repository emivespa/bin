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

# --------------------------------------------------------------------------------

.PHONY: vendor
vendor: submodules ani birch neofetch ytfzf
.PHONY: submodules
submodules:
	git submodule init
	git submodule update
ani:
	unlink $@ || true
	ln -s vendor/github.com/pystardust/ani-cli/ani-cli $@
birch:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/birch/birch $@
neofetch:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/neofetch/neofetch $@
ytfzf:
	unlink $@ || true
	ln -s vendor/github.com/pystardust/ytfzf/ytfzf $@

# --------------------------------------------------------------------------------

.PHONY: clean
clean:
	rm ani
	rm birch
	rm neofetch
	rm vendor -rf
	rm ytfzf
