uname=$(uname)

echo "Operating System detected: $uname"

function Install() {

    echo "Performing Clean Install"

    UpdateSubmodules

    echo "Removing Old Links"
    rm -r ~/.vimrc ~/.tmux.conf ~/.zshrc ~/.p10k.zsh ~/.oh-my-zsh ~/.tmux &> /dev/null

    echo "Creating Symbolic links for files"
    ln -sf ${PWD}/vimrc ~/.vimrc
    ln -sf ${PWD}/tmux.conf ~/.tmux.conf
    ln -sf ${PWD}/tmux ~/.tmux
    ln -sf ${PWD}/zshrc ~/.zshrc
    ln -sf ${PWD}/p10k.zsh ~/.p10k.zsh
    ln -sf ${PWD}/ohmyzsh ~/.oh-my-zsh
    ln -sfn ${PWD}/zsh/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
    ln -sfn ${PWD}/zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    ln -sfn ${PWD}/zsh/powerlevel10k ~/.oh-my-zsh/custom/themes/powerlevel10k

    if [ $uname == "Linux" ];
    then
        mkdir -p ~/.config
        mkdir -p ~/.local/bin
        rm -r ~/.config/termite ~/.config/fontconfig ~/.fonts ~/.Xresources &> /dev/null
        ln -s ${PWD}/termite ~/.config/termite
        ln -s ${PWD}/fontconfig ~/.config/fontconfig
        ln -s ${PWD}/Xresources ~/.Xresources
        ln -s ${PWD}/fonts ~/.fonts
    elif [ $uname == "Darwin" ];
    then
        echo "Copying fonts to ~/Library/Fonts/"
        cp -f ${PWD}/fonts/*/*.ttf ~/Library/Fonts/
    fi

    UpdateVimPlug

    echo "Done"

}

function Update() {
    echo "Fetching from Upstream"
    git fetch --progress
    git reset --hard origin/master
    Install
}

function UpdateInternal() {
    echo "Fast-Forwarding Submodules to Upstream ..."
    git submodule foreach git fetch --progress
    git submodule foreach git reset --hard origin/master
    echo "Done"
}

function UpdateSubmodules() {
    echo "Updating Submodules"
    git submodule update --init --recursive --progress
}

function UpdateVimPlug() {
    echo "Updating Vim Plugins"
    vim -c "PlugUpdate|qa!"
    echo "Upgrading Vim Plug"
    vim -c "PlugUpgrade|qa!"
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

