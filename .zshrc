# Better aliases for `ls`
alias l="ls -FGhp"
alias la="ls -FGAhp"
alias ll="ls -lFGh"
alias lla="ls -lAFGh"

# Enable zsh-completions from home directory
FPATH="${HOME}/.zsh/site-functions:${FPATH}"

# Enable zsh-completions installed by brew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

# Enable tab-style select of menu items (cd, flags suggestions)
zstyle ':completion:*' menu select

# Complete all things!
autoload -Uz compinit && compinit

# Enable zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Better ^w
local WORDCHARS=''

# WTF is this, neede for mosh
# http://pesin.space/posts/2020-10-05-mosh-macos/
export LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8

# Start the starship!
eval "$(starship init zsh)"
