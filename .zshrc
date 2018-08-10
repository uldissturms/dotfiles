export SHELL=/bin/zsh
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim
ZSH_THEME="TheOne"

plugins=(
  git git_remote_branch \
  vi-mode \
  web-search \
  autojump \
  docker docker-compose \
)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH="$HOME/go"

source $ZSH/oh-my-zsh.sh

eval "$(direnv hook zsh)"

# Add scripts to PATH
export PATH="$PATH:$HOME/scripts"

# Add haskell & stack binaries
export PATH="$PATH:$HOME/Library/Haskell/bin:$HOME/.local/bin"

unalias grv

# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"
