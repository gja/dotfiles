general:
	for i in dot*; do ln -sf `pwd`/$$i ~/$${i/dot/.}; done

personal:
	for i in personaldot*; do ln -sf `pwd`/$$i ~/$${i/personaldot/.}; done
