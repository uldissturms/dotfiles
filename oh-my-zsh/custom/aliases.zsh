alias vim='/usr/local/bin/vim'
alias ..='cd ..'
alias cdd='cd -'
alias cdg='cd ~/git'
alias la='la -lah'

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }
function light() {
  if [ -z "$2" ]
  then
    src=$(pbpaste)
  else
    src=$(cat $2)
  fi
  echo $src | highlight -O rtf --syntax $1 --font Inconsolata --style solarized-dark --font-size 24 | pbcopy
}

