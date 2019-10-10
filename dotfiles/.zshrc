if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:/usr/local/share/npm/bin/"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.yarn/bin"
export PATH="/usr/local/bin:${PATH}"
export PATH="/usr/local/opt/gettext/bin:$PATH"

export EDITOR="code -w -n"
export HISTSIZE=4096

alias flush="dscacheutil -flushcache"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias dcr="docker-compose run --rm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init -)"
