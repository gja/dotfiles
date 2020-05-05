all: general

general:
	for i in dot*; do ln -shvf `pwd`/$$i ~/$${i/dot/.}; done
	if [ -d ~/Library/Application\ Support/Code/User/ ]; then ln -s `pwd`/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json; fi
	if [ -d ~/Library/Application\ Support/Code/User/ ]; then ln -s `pwd`/vscode-keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json; fi

personal:
	for i in personaldot*; do ln -shvf `pwd`/$$i ~/$${i/personaldot/.}; done

emacs:
	$(MAKE) -C emacs.d

update-submodules:
	git submodule init
	git submodule update

vscode-extensions:
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension felipe.nasc-touchbar
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension dbaeumer.vscode-eslint
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode.Go
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode.sublime-keybindings
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension Orta.vscode-jest
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension rebornix.ruby
	/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code --install-extension ms-vscode.vscode-typescript-tslint-plugin
