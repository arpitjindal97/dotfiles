.PHONY: clean

CONFIG := $(HOME)/.config
LOCAL_BIN := $(HOME)/.local/bin
LOCAL_ICONS := $(HOME)/.local/share/icons

$(CONFIG):
	@printf "\nCreating config directory\n"
	- mkdir -p ~/.config

$(LOCAL_BIN):
	@printf "\nCreating local bin dir\n"
	- mkdir -p ~/.local/bin

$(LOCAL_ICONS):
	@printf "\nCreating local icons dir\n"
	- mkdir -p ~/.local/share/icons

clean:
	@printf "\nRemoving old conflicting files\n"
	- rm -f ~/.vimrc
	- rm -f ~/.tmux.conf
	- rm -f ~/.zshrc
	- rm -f ~/.config/termite
	- rm -f ~/.config/fontconfig
	- rm -f ~/.Xresources
	@printf "\nRemoving conflicting directories\n"
	- rm -rf ~/.vim
	- rm -rf ~/.fonts
	- rm -rf ~/.local/share/icons/Flat-Remix*

install: $(CONFIG) $(LOCAL_BIN) $(LOCAL_ICONS) clean
	@printf "\nCreating Symbolic links for files\n"
	ln -sf ${PWD}/vimrc ~/.vimrc
	ln -sf ${PWD}/tmux.conf ~/.tmux.conf
	ln -sf ${PWD}/zshrc ~/.zshrc
	ln -s ${PWD}/termite ~/.config/termite
	ln -s ${PWD}/fontconfig ~/.config/fontconfig
	ln -s ${PWD}/Xresources ~/.Xresources
	@printf "\nCreating Symbolic links for directories\n"
	ln -sf ${PWD}/.vim ~/.vim
	ln -sf ${PWD}/fonts ~/.fonts
	ln -sf ${PWD}/icons/flat-remix/Flat-Remix ~/.local/share/icons/
	ln -sf ${PWD}/icons/flat-remix/Flat-Remix-Dark ~/.local/share/icons/
	ln -sf ${PWD}/icons/flat-remix/Flat-Remix-Light ~/.local/share/icons/
	git submodule update --init

update:
	git pull origin master
