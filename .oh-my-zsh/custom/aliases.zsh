alias vim='/usr/local/bin/vim'
alias vi=vim
alias v=vim

alias ..='cd ..'
alias cdd='cd -'
alias cdg='cd ~/git'

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

function light() {
  if [ -z "$2" ]
  then
    src=$(pbpaste)
  else
    src=$(cat $2)
  fi
  echo $src | highlight -O rtf --syntax $1 --font Inconsolata --style solarized-dark --font-size 24 | pbcopy
}
