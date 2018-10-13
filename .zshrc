export SHELL=/bin/zsh
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim
export AWS_DEFAULT_REGION=eu-west-1

ZSH_THEME="TheOne"
ZSH_DISABLE_COMPFIX=true

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

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

which direnv > /dev/null && eval "$(direnv hook zsh)"

# Add scripts to PATH
export PATH="$PATH:$HOME/scripts"

# Add haskell & stack binaries
export PATH="$PATH:$HOME/Library/Haskell/bin:$HOME/.local/bin"

unalias grv

# load ~/.zshrc.local
[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"
