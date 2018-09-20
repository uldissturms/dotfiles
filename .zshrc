export SHELL=/bin/zsh
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim
export AWS_DEFAULT_REGION=eu-west-1

ZSH_THEME="TheOne"
ZSH_DISABLE_COMPFIX=true

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

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}

zle     -N     fzf-history-widget-accept
bindkey '^X^R' fzf-history-widget-accept
