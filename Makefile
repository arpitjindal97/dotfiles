.PHONY: install
install:
	ln -sf ${PWD}/vimrc ~/.vimrc
	ln -sf ${PWD}/.vim ~/.vim
	ln -sf ${PWD}/tmux.conf ~/.tmux.conf
	ln -sf ${PWD}/.tmux ~/.tmux
	mkdir -p ~/.config &> /dev/null
	rm ~/.config/termite &> /dev/null
	ln -s ${PWD}/termite ~/.config/termite
	rm ~/.config/fontconfig &> /dev/null
	ln -s ${PWD}/fontconfig ~/.config/fontconfig
	ln -sf ${PWD}/fonts ~/.fonts
	ln -sf ${PWD}/zshrc ~/.zshrc
	mkdir -p ~/.local/bin &> /dev/null
	rm ~/.local/bin/tmux &> /dev/null
	ln -s ${PWD}/tmux ~/.local/bin/tmux
	mkdir -p ~/.local/share/icons &> /dev/null
	rm -rf ~/.local/share/icons/Flat-Remix* &> /dev/null
	ln -sf ${PWD}/icons/flat-remix/Flat-Remix* ~/.local/share/icons/
	git submodule update --init

update:
	git pull origin master
