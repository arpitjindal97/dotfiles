.PHONY: install
install:
	ln -sf ${PWD}/vimrc ~/.vimrc
	ln -sf ${PWD}/.vim ~/.vim
	ln -sf ${PWD}/tmux.conf ~/.tmux.conf
	ln -sf ${PWD}/.tmux ~/.tmux
	rm ~/.config/termite &> /dev/null
	ln -s ${PWD}/termite ~/.config/termite
	rm ~/.config/fontconfig &> /dev/null
	ln -s ${PWD}/fontconfig ~/.config/fontconfig
	ln -sf ${PWD}/fonts ~/.fonts
	ln -sf ${PWD}/zshrc ~/.zshrc
	mkdir -p ~/.local/bin &> /dev/null
	ln -sf ${PWD}/tmux/tmux ~/.local/bin/tmux
	git submodule update --init

update:
	git pull origin master
