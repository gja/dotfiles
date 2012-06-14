all:
	for i in dot*; do ln -s `pwd`/$$i ~/$${i/dot/.}; done
