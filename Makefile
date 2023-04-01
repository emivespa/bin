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
	ln -s vendor/github.com/pystardust/ani-cli/ani-cli ani

birch:
	ln -s vendor/github.com/dylanaraps/birch/birch birch

fff:
	ln -s vendor/github.com/dylanaraps/fff/fff fff

golfetch:
	ln -s vendor/github.com/dylanaraps/golfetch/pf-unobfuscated golfetch

neofetch:
	ln -s vendor/github.com/dylanaraps/neofetch/neofetch neofetch

pass:
	ln -s vendor/git.zx2c4.com/password-store/src/password-store.sh pass

pfetch:
	ln -s vendor/github.com/dylanaraps/pfetch/pfetch pfetch

shfm:
	ln -s vendor/github.com/dylanaraps/shfm/shfm shfm

ytfzf:
	ln -s vendor/github.com/pystardust/ytfzf/ytfzf ytfzf
