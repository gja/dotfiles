all:
	for i in dot*; do cp -r $$i ~/$${i/dot/.}; done
