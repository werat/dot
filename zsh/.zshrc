# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="avit-werat"

plugins=(git brew common-aliases encode64 python)

source $ZSH/oh-my-zsh.sh

# User configuration

eval `/usr/libexec/path_helper -s`
# export MANPATH="/usr/local/man:$MANPATH"

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias l="ls -FGhp"
alias la="ls -FGAhp"
alias ll="ls -lFGh"
alias lla="ls -lAFGh"

# disable comfirmations
alias rm='rm'
alias cp='cp'
alias mv='mv'

setopt HIST_IGNORE_ALL_DUPS

export EDITOR=vim
export SVN_EDITOR=vim
export GIT_EDITOR=vim

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

export PATH=$PATH:/usr/local/opt/go/libexec/bin

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
