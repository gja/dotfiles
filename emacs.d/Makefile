copy-settings: ~/.emacs.d
	tar c . | tar xC $<

~/.emacs.d:
	test -d $@ || (curl -L http://git.io/epre | sh)
