.PHONY: install
install:
	ln -sf vimrc ~/.vimrc
	ln -sf .vim ~/.vim
	ln -sf tmux.conf ~/.tmux.conf
	ln -sf .tmux ~/.tmux
	ln -sf termite ~/.config/termite
	ln -sf fontconfig ~/.config/fontconfig
	ln -sf zshrc ~/.zshrc
	git submodule update --init

update:
	git pull origin master
	git submodule foreach git pull origin master
