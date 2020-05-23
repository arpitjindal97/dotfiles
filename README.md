# dotfiles

This repo contains my dotfiles. It works on both MacOS and Linux. Use below command to get started quickly

```bash
cd ~
git clone https://github.com/arpitjindal97/dotfiles.git dotfiles
cd dotfiles
make install
```

## Prerequisite

Install below tools first before cloning the repo

- `zsh`
- `xsel` or `xclip` (only Linux)
- `vim`
- `tmux`
- `git`

## Fonts

- [github.com/romkatv/powerlevel10k-media/MesloLGS NF](https://github.com/romkatv/powerlevel10k-media/)
- [github.com/belluzj/fantasque-sans](https://github.com/belluzj/fantasque-sans)

## Tools Used

- [termite](https://github.com/thestinger/termite/)
- [urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html)
- [vim](https://github.com/vim/vim)
- [tmux](https://github.com/tmux/tmux)
- [zsh](https://github.com/zsh-users/zsh)

## Update configuration

To make your dotfiles in sync with mine, use the below command. It will fetch from upstream here.

```bash
cd ~/dotfiles
make update
```

## Screenshot

![screenshot](screenshot.png?raw=true)

## Tmux

If you default shell is not `zsh` and you try to open tmux and It is not be able to render powerline symbols. Then type below command then try again.

```bash
export LC_ALL=en_US.UTF-8
```

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

Rest all other key binding are samme.

Plugin Manager: [tpm](https://github.com/tmux-plugins/tpm)

### Plugins used

- [github.com/tmux-plugins/tmux-battery](https://github.com/tmux-plugins/tmux-battery)
- [github.com/tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank)

## Vim

| Key | Function           |
| --- | --------           |
| C-n | NerdTreeToggle<CR> |

I haven't set any key binding for vim. All the commands are as default provided by the plugins. Check their documentation. 

Plugin Manager: [vim-plug](https://github.com/junegunn/vim-plug)

### Plugins used

- [github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [github.com/Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [github.com/elzr/vim-json](https://github.com/elzr/vim-json)
- [github.com/vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [github.com/vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [github.com/airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [github.com/ctrlpvim/ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
- [github.com/jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)
- [github.com/Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)
- [github.com/ntpeters/vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
- [github.com/altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
- [github.com/fatih/vim-go](https://github.com/fatih/vim-go)
- [github.com/godlygeek/tabular](https://github.com/godlygeek/tabular)
- [github.com/mhinz/vim-signify](https://github.com/plasticboy/vim-markdown)
- [github.com/darfink/vim-plist](https://github.com/darfink/vim-plist)

## Zsh

Vim keybindings are used. Please do not edit `zshrc` file. If you want to set some environment variable then provide `~/.zshenv` file. 
It will get sourced automatically. You can see a sample `.zshenv` file [here](https://gist.github.com/arpitjindal97/d07fdf75433a288e921587c910bd3d73)

Have a look at different types of files at [zsh.sourceforge.net/Intro/intro_3.html](http://zsh.sourceforge.net/Intro/intro_3.html)

### Addons used

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)

**Feel free to use them and provide PRs for any improvement**
