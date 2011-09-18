all:
	for i in dot*; do cp $$i ~/$${i/dot/.}; done
