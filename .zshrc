export SHELL=/bin/zsh
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vi
ZSH_THEME="gitster"

plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH="$HOME/go"

source $ZSH/oh-my-zsh.sh

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

eval "$(direnv hook zsh)"

# Add scripts to PATH
export PATH="$PATH:$HOME/scripts"

unalias grv

# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"
