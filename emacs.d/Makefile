copy-settings: ~/.emacs.d
	tar c . | tar xC $<
	find personal-configs -name $$USER.el | sed 's,personal-configs/,,' | xargs tar cC personal-configs .gitkeep | tar xC $<

~/.emacs.d:
	test -d $@ || (curl -L http://git.io/epre | sh)
