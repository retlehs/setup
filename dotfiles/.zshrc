# https://github.com/robbyrussell/oh-my-zsh/
# https://github.com/mathiasbynens/dotfiles/
# https://github.com/thoughtbot/dotfiles/

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"

plugins=(git osx sublime brew npm)

source $ZSH/oh-my-zsh.sh

export EDITOR="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -w"
export HISTSIZE=4096

alias zshrc="st ~/.zshrc"
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias flush="dscacheutil -flushcache"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"