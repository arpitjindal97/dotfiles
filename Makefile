
CONFIG := $(HOME)/.config
LOCAL_BIN := $(HOME)/.local/bin
LOCAL_ICONS := $(HOME)/.local/share/icons

$(CONFIG):
	@printf "\nCreating config directory\n"
	mkdir -p ~/.config 2> /dev/null

$(LOCAL_BIN):
	@printf "\nCreating local bin dir\n"
	mkdir -p ~/.local/bin 2> /dev/null

$(LOCAL_ICONS):
	@printf "\nCreating local icons dir\n"
	mkdir -p ~/.local/share/icons 2> /dev/null

remove_old: $(CONFIG) $(LOCAL_BIN) $(LOCAL_ICONS)
	@printf "\nRemoving old conflicting files\n"
	rm ~/.config/termite 2> /dev/null
	rm ~/.config/fontconfig 2> /dev/null
	rm ~/.local/bin/tmux 2> /dev/null
	rm -rf ~/.local/share/icons/Flat-Remix* 2> /dev/null

install: remove_old
	@printf "\nCreating Symbolic links for files\n"
	ln -sf ${PWD}/vimrc ~/.vimrc
	ln -sf ${PWD}/.vim ~/.vim
	ln -sf ${PWD}/tmux.conf ~/.tmux.conf
	ln -sf ${PWD}/.tmux ~/.tmux
	ln -sf ${PWD}/fonts ~/.fonts
	ln -sf ${PWD}/zshrc ~/.zshrc
	ln -sf ${PWD}/icons/flat-remix/Flat-Remix* ~/.local/share/icons/
	@printf "\nCreating Symbolic links for directories\n"
	ln -s ${PWD}/termite ~/.config/termite
	ln -s ${PWD}/tmux ~/.local/bin/tmux
	ln -s ${PWD}/fontconfig ~/.config/fontconfig
	git submodule update --init

update:
	git pull origin master
