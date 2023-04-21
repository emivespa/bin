default: ;

.PHONY: deps
deps:
	git grep 'command -v *.*|| *exit' | sed 's/:/ /' | awk '{ print $$1 ": " $$4 }'

.PHONY: shellcheck
shellcheck:
	find . -maxdepth 1 -type f | \
		while read -r file; do test -x $$file && shellcheck -f diff $$file 2>/dev/null; done

.PHONY: whatis
whatis:
	./whatisx *

################################################################################

.PHONY: vendor
vendor: ani birch fff neofetch pass pfetch shfm ytfzf
ani:
	unlink $@ || true
	ln -s vendor/github.com/pystardust/ani-cli/ani-cli $@
birch:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/birch/birch $@
fff:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/fff/fff $@
golfetch:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/golfetch/pf-unobfuscated $@
neofetch:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/neofetch/neofetch $@
pass:
	unlink $@ || true
	ln -s vendor/git.zx2c4.com/password-store/src/password-store.sh $@
pfetch:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/pfetch/pfetch $@
shfm:
	unlink $@ || true
	ln -s vendor/github.com/dylanaraps/shfm/shfm $@
ytfzf:
	unlink $@ || true
	ln -s vendor/github.com/pystardust/ytfzf/ytfzf $@
