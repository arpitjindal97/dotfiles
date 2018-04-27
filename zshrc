# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/arpit/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit

alias ls='ls --color'
git_branch_info() {
    info=$(git symbolic-ref HEAD 2> /dev/null)
    if (( $? == 0 )) ; then
        info=" $(echo $info| cut -d \/ -f 3)"
        echo $info
    else
        echo ""
    fi
}

export PATH="$HOME/.gem/ruby/2.5.0/bin:$PATH"
export CHROME_BIN="chromium"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
export PICTURES="$HOME/Pictures"

zstyle ':completion:*' rehash true
setopt prompt_sp

export GPG_TTY=$(tty)

precmd() {
    PROMPT="%B%F{1}[%F{6}%n%F{1}:%F{3}%~%F{2}$(git_branch_info)%F{1}]%b%f$ "
}
