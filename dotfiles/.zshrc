export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"

plugins=(git osx brew npm)

source $ZSH/oh-my-zsh.sh

export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"
export PATH="$PATH:/usr/local/share/npm/bin/"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.yarn/bin"
export PATH="/usr/local/bin:${PATH}"

export EDITOR="atom -nw"
export HISTSIZE=4096

alias flush="dscacheutil -flushcache"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
