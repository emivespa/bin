default: ;

.PHONY: shellcheck
shellcheck:
	find . -maxdepth 1 -type f | \
		while read -r file; do test -x $$file && shellcheck -f diff $$file; done

.PHONY: whatis
whatis:
	./whatisx *

################################################################################

.PHONY: vendor
vendor: ani birch fff neofetch pass pfetch shfm ytfzf
ani:
	unlink $@
	ln -s vendor/github.com/pystardust/ani-cli/ani-cli $@
birch:
	unlink $@
	ln -s vendor/github.com/dylanaraps/birch/birch $@
fff:
	unlink $@
	ln -s vendor/github.com/dylanaraps/fff/fff $@
golfetch:
	unlink $@
	ln -s vendor/github.com/dylanaraps/golfetch/pf-unobfuscated $@
neofetch:
	unlink $@
	ln -s vendor/github.com/dylanaraps/neofetch/neofetch $@
pass:
	unlink $@
	ln -s vendor/git.zx2c4.com/password-store/src/password-store.sh $@
pfetch:
	unlink $@
	ln -s vendor/github.com/dylanaraps/pfetch/pfetch $@
shfm:
	unlink $@
	ln -s vendor/github.com/dylanaraps/shfm/shfm $@
ytfzf:
	unlink $@
	ln -s vendor/github.com/pystardust/ytfzf/ytfzf $@
