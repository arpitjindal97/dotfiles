uname=$(uname)

echo "Operating System detected: $uname"

function Install() {

    echo "Updating Submodules"
    git submodule update --init

    echo "Performing Clean Install"

    if [ $uname == "Linux" ];
    then
        mkdir -p ~/.config
        mkdir -p ~/.local/bin
        rm -r ~/.config/termite ~/.config/fontconfig ~/.fonts ~/.Xresources &> /dev/null
        ln -s ${PWD}/termite ~/.config/termite
        ln -s ${PWD}/fontconfig ~/.config/fontconfig
        ln -s ${PWD}/Xresources ~/.Xresources
        ln -s ${PWD}/fonts ~/.fonts
    fi

    echo "Removing Old Links"
    rm -r ~/.vimrc ~/.tmux.conf ~/.zshrc ~/.oh-my-zsh ~/.tmux &> /dev/null
    echo "Creating Symbolic links for files"
    ln -sf ${PWD}/vimrc ~/.vimrc
    ln -sf ${PWD}/tmux.conf ~/.tmux.conf
    ln -sf ${PWD}/tmux ~/.tmux
    ln -sf ${PWD}/zshrc ~/.zshrc
    ln -sf ${PWD}/ohmyzsh ~/.oh-my-zsh
    ln -sf ${PWD}/zsh/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

    echo "Done"

}

function Update() {
    echo "Fetching from Upstream"
    git fetch
    git reset --hard origin/master
    echo "Done"
}

function UpdateInternal() {
    echo "Updating Submodules..."
    git submodule foreach git pull origin master
    echo "Updating Vim Plugins ..."
    vim -c "PlugUpdate|qa!"
    echo "Done"
}


if [ $1 == "install" ];
then
    Install
elif [ $1 == "update" ];
then
    Update
elif [ $1 == "updateInternal" ];
then
    UpdateInternal
else
    echo "Unknown option"
fi

