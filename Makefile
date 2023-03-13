default: ;

.PHONY: shellcheck
shellcheck:
	find . -maxdepth 1 -type f | \
		while read -r file; do test -x $$file && shellcheck -f diff $$file; done

.PHONY: whatis
whatis:
	./whatisx *

################################################################################

.PHONY: submodule-symlinks
submodule-symlinks: birch fff neofetch pfetch shfm

birch:
	ln -s vendor/github.com/dylanaraps/birch/birch birch

fff:
	ln -s vendor/github.com/dylanaraps/fff/fff fff

neofetch:
	ln -s vendor/github.com/dylanaraps/neofetch/neofetch neofetch

pass: ; # TODO

pfetch:
	ln -s vendor/github.com/dylanaraps/pfetch/pfetch pfetch

shfm:
	ln -s vendor/github.com/dylanaraps/shfm/shfm shfm

