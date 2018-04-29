# dotfiles

This repo contains my dotfiles. Use below command to get started quickly

    cd ~
    git clone --recursive https://github.com/arpitjindal97/dotfiles.git dotfiles
    ln -sf dotfiles/vimrc .vimrc
    ln -sf dotfiles/.vim .vim
    ln -sf dotfiles/tmux.conf .tmux.conf
    ln -sf dotfiles/.tmux .tmux
    ln -sf ~/dotfiles/termite ~/.config/termite
    ln -sf ~/dotfiles/fontconfig ~/.config/fontconfig
    git submodule update --init

## Fonts

- [github.com/powerline/fonts](https://www.archlinux.org/packages/community/x86_64/powerline-fonts/)
- [github.com/belluzj/fantasque-sans](https://aur.archlinux.org/packages/ttf-fantasque-sans-mono/)

## Tools Used

- [Termite](https://github.com/thestinger/termite/)
- [Vim](https://github.com/vim/vim)
- [tmux](https://github.com/tmux/tmux)
- [xsel](https://github.com/kfish/xsel)
- [zsh](https://github.com/zsh-users/zsh)

## Update submodules

Vim plugins are cloned as submodules. Update them once in a week.

cd ~/dotfiles
git submodule foreach git pull origin master
git submodule update

## Screenshot

![screenshot](screenshot.png?raw=true)

## Plugins used in Vim

- [github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree.git)
- [github.com/Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin.git)
- [github.com/elzr/vim-json](https://github.com/elzr/vim-json.git)
- [github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline.git)
- [github.com/vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [github.com/airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter.git)
- [github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [github.com/ctrlpvim/ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
- [github.com/jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)
- [github.com/Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)
- [github.com/ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
- [github.com/altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
- [github.com/fatih/vim-go](https://github.com/fatih/vim-go.git)
- [github.com/godlygeek/tabular](https://github.com/godlygeek/tabular.git)
- [github.com/mhinz/vim-signify](https://github.com/plasticboy/vim-markdown.git)

## Keybindings

### Tmux

| Key Combination | Function                           |
| --------------- | --------                           |
| prefix          | C-a                                |
| prefix + \[     | copy-mode vi                       |
| prefix + b      | previous-window                    |
| prefix + n      | next-window                        |
| prefix + p      | paste buffer from clipboard (xsel) |
| prefix + k      | select pane -U                     |
| prefix + j      | select pane -D                     |
| prefix + h      | select pane -L                     |
| prefix + l      | select pane -R                     |
| prefix + C-h    | resize pane -L 1                   |
| prefix + C-j    | resize pane -D 1                   |
| prefix + C-k    | resize pane -U 1                   |
| prefix + C-l    | resize pane -R 1                   |
| prefix + r      | reload source file                 |
| copy-mode-vi v  | begin-selection                    |
| copy-mode-vi y  | copy-buffer to clipboard (xsel)    |

Rest all other key binding are samme. I am also using [hdaly/tmux-better-mouse-mode](https://github.com/hdaly/tmux-better-mouse-mode) plugin for easy mouse movements

### Vim

| Key | Function           |
| --- | --------           |
| C-n | NerdTreeToggle<CR> |

I haven't set any key binding for vim. All the commands are as default provided by the plugins. Check their documentation. 


