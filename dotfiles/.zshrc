export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="cloud"

plugins=(git osx brew npm)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/usr/local/share/npm/bin/"
export PATH="$PATH:$HOME/.composer/vendor/bin"

export EDITOR="atom -nw"
export HISTSIZE=4096
