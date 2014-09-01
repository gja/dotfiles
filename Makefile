all: general emacs

general:
	for i in dot*; do ln -shvf `pwd`/$$i ~/$${i/dot/.}; done

personal:
	for i in personaldot*; do ln -shvf `pwd`/$$i ~/$${i/personaldot/.}; done

emacs:
	$(MAKE) -C emacs.d

update-submodules:
	git submodule init
	git submodule update
