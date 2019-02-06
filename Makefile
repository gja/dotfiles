all: general

general:
	for i in dot*; do ln -shvf `pwd`/$$i ~/$${i/dot/.}; done
	if [ -d ~/Library/Application\ Support/Code/User/ ]; then ln -s `pwd`/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json; fi

personal:
	for i in personaldot*; do ln -shvf `pwd`/$$i ~/$${i/personaldot/.}; done

emacs:
	$(MAKE) -C emacs.d

update-submodules:
	git submodule init
	git submodule update
