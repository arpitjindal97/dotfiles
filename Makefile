.PHONY: install
install:
	ln -sf ${PWD}/vimrc ~/.vimrc
	ln -sf ${PWD}/.vim ~/.vim
	ln -sf ${PWD}/tmux.conf ~/.tmux.conf
	ln -sf ${PWD}/.tmux ~/.tmux
	ln -sf ${PWD}/termite ~/.config/termite
	ln -sf ${PWD}/fontconfig ~/.config/fontconfig
	ln -sf ${PWD}/zshrc ~/.zshrc
	git submodule update --init

update:
	git pull origin master
